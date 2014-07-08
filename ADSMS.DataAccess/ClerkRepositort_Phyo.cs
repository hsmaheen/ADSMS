﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class ClerkRepositort_Phyo
    {
        stationeryEntities cntx = new stationeryEntities();

        public List<category> getAllCategory()
        {
            try
            {
                List<category> cate = new List<category>();
                cate = cntx.categories.ToList<category>();
                return cate;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<item> getAllItemByCid(int cid)
        {
            try
            {
                List<item> itm = new List<item>();
                var i = (from a in cntx.items where a.ItemCatID == cid select a).Distinct();
                itm = i.ToList();
                return itm;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<supplier> getAllSupplierByItmid(int itmid)
        {
            try
            {
                List<supplier> supplier = new List<supplier>();
                supplier = (from s in cntx.suppliers
                            join i in cntx.itemsuppliers on s.SupplierID equals i.SupplierID
                            where i.ItemID == itmid && i.SupplierRank > 0 && i.SupplierRank < 4
                            select s).Distinct().ToList();
                return supplier;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public double getPriceBySidItmid(int sid, int itmid)
        {
            try
            {
                return (double)((from i in cntx.itemsuppliers
                                 where i.SupplierID == sid &&
                                     i.ItemID == itmid
                                 select i.Price).Distinct().FirstOrDefault());
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int createPurchaseOrder(purchaseorder r)
        {
            try
            {
                purchaseorder req = new purchaseorder();
                req.POSuppID = r.POSuppID;
                req.POEmpID = r.POEmpID;
                req.POReqDate = r.POReqDate;
                req.PODeliverAddress = r.PODeliverAddress;
                req.POReqDeliverDate = r.POReqDeliverDate;
                cntx.purchaseorders.Add(req);
                cntx.SaveChanges();
                int id = req.POID;
                return id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int getSIDByPoid(int poid)
        {
            try
            {
                return (int)(from a in cntx.purchaseorders where a.POID == poid select a.POSuppID).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int getPOIDBySid(int sid)
        {
            try
            {
                int i = (from a in cntx.purchaseorders where a.POSuppID == sid select a.POID).FirstOrDefault();
                if (i == 0)
                {
                    return 0;
                }
                else return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void createPurchaseOrderDetails(purchaseorderdetail rd)
        {
            try
            {
                purchaseorderdetail detail = new purchaseorderdetail();
                detail.POID = rd.POID;
                detail.POItemID = rd.POItemID;
                detail.POItemQuant = rd.POItemQuant;
                detail.POStatus = rd.POStatus;
                cntx.purchaseorderdetails.Add(detail);
                cntx.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //Purchase Order History 
        public List<object> getAllPurchase()
        {
            List<object> itm = new List<object>();
            try
            {
                itm = (from f in cntx.purchaseorders
                         join i in cntx.suppliers on f.POSuppID equals i.SupplierID
                         join d in cntx.purchaseorderdetails on f.POID equals d.POID
                         orderby f.POID descending
                         select new { POID=f.POID,SupplierName = i.SupplierName, POReqDate = f.POReqDate, POReqDeliverDate = f.POReqDeliverDate, ReceiveDate = f.PORecieveDate }).ToList<object> ();
                return itm;
            }
            catch (Exception ex)
            {
                throw ex;
            }           
        }
        ////Purchase Order Detail
        public purchaseorder getPurchaseOrderByPOID(int poid)
        {
            purchaseorder po = new purchaseorder();
            try
            {
                po = (from p in cntx.purchaseorders where p.POID == poid select p).FirstOrDefault();
                return po;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<object> getAllPurchaseOrderDetailByPOID(int poid)
        {
            try
            {
                List<object> list = new List<object>();
                list = (from p in cntx.purchaseorderdetails
                        join itm in cntx.items on p.POItemID equals itm.ItemID
                        where p.POID==poid
                        orderby p.POID descending
                        select new { POID = p.POID, POItemID = p.POItemID, ItemDescription = itm.ItemDescription, POItemQuant = p.POItemQuant }).ToList<object>();

                return list;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<purchaseorderdetail> getAllPurchaseOrderDetailStatusByPOID(int poid)
        {
            try
            {
                List<purchaseorderdetail> detail = new List<purchaseorderdetail>();
                detail=(from d in cntx.purchaseorderdetails where d.POID==poid orderby d.POItemID descending select d).ToList();
                return detail;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool UpdatePurchaseOrderDetailStatusApprove(int poid)
        {
            purchaseorder p = new purchaseorder();
            List<purchaseorderdetail> pd = new List<purchaseorderdetail>();
            item itm = new item();
            try
            {
                p = cntx.purchaseorders.Find(poid);
                p.PORecieveDate = DateTime.Now;

                pd = (from f in cntx.purchaseorderdetails where f.POID==poid select f).ToList();
                foreach (purchaseorderdetail dd in pd)
                {
                    int poQty = dd.POItemQuant;
                    dd.POStatus = "approved";
                    //increase item quantity
                    itm = (from it in cntx.items where it.ItemID == dd.POItemID select it).FirstOrDefault();
                    int itmQty = int.Parse(itm.ItemQuant.ToString());
                    int total = poQty + itmQty;
                    itm.ItemQuant = total;
                    //increase item quantity

                    //Include Tranaction Table
                    transaction tnew = new transaction();
                    tnew.TransItemID = itm.ItemID;
                    tnew.TransDate = DateTime.Now;
                    tnew.TransItemBalance = total;
                    tnew.TransItemQuant = poQty;
                    tnew.TransReason = "Recieved Purchase Order from Supplier";
                    tnew.TransactionType = "in";
                    tnew.TranUserID = Convert.ToInt32(System.Web.HttpContext.Current.Session["userid"]);
                    tnew.TransCode = "Purchase";
                    cntx.transactions.Add(tnew);

                   

                }
                cntx.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<object> getAllPurchaseStatus(string search)
        {
            List<object> itm = new List<object>();
            try
            {
                if (search == "pending")
                {
                    itm = (from f in cntx.purchaseorders
                           join i in cntx.suppliers on f.POSuppID equals i.SupplierID
                           join d in cntx.purchaseorderdetails on f.POID equals d.POID
                           where f.PORecieveDate==null
                           orderby f.POID descending
                           select new { POID = f.POID, SupplierName = i.SupplierName, POReqDate = f.POReqDate, POReqDeliverDate = f.POReqDeliverDate, ReceiveDate = f.PORecieveDate }).ToList<object>();
                    
                }
                else if (search == "approved")
                {
                    itm = (from f in cntx.purchaseorders
                           join i in cntx.suppliers on f.POSuppID equals i.SupplierID
                           join d in cntx.purchaseorderdetails on f.POID equals d.POID
                           where f.PORecieveDate!=null
                           orderby f.POID descending
                           select new { POID = f.POID, SupplierName = i.SupplierName, POReqDate = f.POReqDate, POReqDeliverDate = f.POReqDeliverDate, ReceiveDate = f.PORecieveDate }).ToList<object>();
                    
                }
                return itm;
            }
            catch (Exception ex)
            {
                throw ex;
            }     
        }

        //for email
        public List<purchaseorderdetail> getPurchaseOrderDetailByPoid(int poid)
        {
            try
            {
                List<purchaseorderdetail> detail = new List<purchaseorderdetail>();
                detail = (from dd in cntx.purchaseorderdetails where dd.POID == poid select dd).ToList();
                return detail;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string getENameByEid(int eid)
        {
            try
            {
                return (string)(from e in cntx.employees where e.EmployeeID == eid select e.EmployeeName).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string getItmNameByItmid(int itmid)
        {
            try
            {
                return (string)(from itm in cntx.items where itm.ItemID == itmid select itm.ItemDescription).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //For Sotre/CollectionPointDetails.aspx
        public List<collectionPoint> getAllCollectionPoint()
        {
            try
            {
                List<collectionPoint> listcp = new List<collectionPoint>();
                listcp = (from cp in cntx.collectionPoints select cp).ToList();
                return listcp;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool updateCollectionDateByCPID(int cpid,string date)
        {
            try
            {
                collectionPoint cp = new collectionPoint();
                cp = (from d in cntx.collectionPoints where d.CollectionPointID == cpid select d).FirstOrDefault();
                cp.CollectionPointDate = date;
                cntx.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}