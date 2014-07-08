﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class PurchaseOrderRepository
    {
        stationeryEntities se;
        public PurchaseOrderRepository()
        {
            se = new stationeryEntities();
        }
        public List<purchaseorder> selectPurchaseOrder()
        {
            var query = from p in se.purchaseorders
                        where (p.POReqDeliverDate == null)
                        select p;
            List<purchaseorder> purchaseOrder = query.ToList<purchaseorder>();

            return purchaseOrder;
        }
        //By Seint San Thandar Bo For Mobile
        public List<object> selectPurchaseOrderList()
        {
            var query = from p in se.purchaseorders
                        where (p.PORecieveDate == null)
                        select new
                        {

                            p.POID,
                            p.POReqDate,
                            p.supplier.SupplierCode
                        };
            List<object> purchaseOrder = query.ToList<object>();

            return purchaseOrder;
        }
        //By Seint San Thandar Bo For Mobile
        public List<object> selectPurchaseOrderDetailByPurchaseOrderID(int purchaseOrderID)
        {
            var query = from pdetail in se.purchaseorderdetails
                        where pdetail.POID == purchaseOrderID
                        select new
                        {
                            pdetail.POID,
                            pdetail.POItemID,
                            pdetail.item.ItemDescription,
                            pdetail.POItemQuant,
                            pdetail.POStatus
                        };
            List<object> p = new List<object>();
            p = query.ToList<object>();
            return p;
        }
        //By Seint San Thandar bo
        public bool UpdatePurchaseOrder(String poID, String approveEmpID)
        {
            try
            {
                int id = Convert.ToInt32(poID);
                var query = from p in se.purchaseorders
                            where p.POID == id
                            select p;
                purchaseorder po = query.SingleOrDefault();
                // po.POApprovedByEmpID = Convert.ToInt32(approveEmpID);
                po.PORecieveDate = DateTime.Today.Date;

               



                //Save In Transaction

                var podetail = from pd in se.purchaseorderdetails
                               where pd.POID == id
                               select pd;
                List<purchaseorderdetail> details = podetail.ToList<purchaseorderdetail>();
                foreach (purchaseorderdetail d in details)
                {
                    transaction t = new transaction();
                    t.TransCode = "PO";
                    t.TransactionType = "in";
                    t.TransDate = DateTime.Today.Date;
                    t.TransItemBalance = d.POItemQuant;
                    t.TransItemID = d.POItemID;
                    t.TransReason = "PO Received";
                    t.TranUserID = Convert.ToInt32(approveEmpID);


                    se.transactions.Add(t);

                    //Update Item balance
                    var q = from i in se.items
                            where i.ItemID == d.POItemID
                            select i;
                    item iTem = q.SingleOrDefault();
                    iTem.ItemQuant = iTem.ItemQuant + d.POItemQuant;
                    se.SaveChanges();
                }

                return true;

            }
            catch (Exception ex)
            {
                return false;
            }





        }
    }
}