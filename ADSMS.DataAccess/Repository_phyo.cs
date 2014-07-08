using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace ADSMS.DataAccess
{
    public class Repository_phyo
    {
        stationeryEntities cntx = new stationeryEntities();

        public List<object> getAllRequisitionByEid(int eid)
        {
            try
            {
                List<object> obj = new List<object>();
                var q = (from r in cntx.requisitions
                         join rd in
                             (from b in cntx.requisitiondetails
                              group b by b.ReqID into g
                              select new { ReqID = g.Key, qtySum = g.Sum(x => x.ReqQuantityReq) })
                             on r.ReqID equals rd.ReqID
                         where r.ReqEmpId == eid && r.ReqStatus!="outstanding"
                         orderby r.ReqDate descending
                         select new
                         {
                             ReqID = r.ReqID,
                             reqDate = r.ReqDate,
                             ReqStatus = r.ReqStatus,
                             ReqApproveDate = r.ReqApproveDate,
                             qtySum = rd.qtySum
                         });
                obj = q.ToList<object>();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<object> getAllRequisitionStatusByEid(int eid, string search)
        {
            try
            {
                List<object> obj = new List<object>();
                var q = (from r in cntx.requisitions
                         join rd in
                             (from b in cntx.requisitiondetails
                              group b by b.ReqID into g
                              select new { ReqID = g.Key, qtySum = g.Sum(x => x.ReqQuantityReq) })
                             on r.ReqID equals rd.ReqID
                         where r.ReqEmpId == eid && r.ReqStatus==search
                         orderby r.ReqDate descending
                         select new
                         {
                             ReqID = r.ReqID,
                             reqDate = r.ReqDate,
                             ReqStatus = r.ReqStatus,
                             ReqApproveDate = r.ReqApproveDate,
                             qtySum = rd.qtySum
                         });
                obj = q.ToList<object>();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<object> getAllItem()
        {
            try
            {
                List<object> itm = new List<object>();
                itm = cntx.items.ToList<object>();
                return itm;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<item> getAllItem2()
        {
            try
            {
                List<item> itm = new List<item>();
                itm = cntx.items.ToList<item>();
                return itm;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int getItemIDByItemDescription(string iname)
        {
            try
            {
                return (int)(from f in cntx.items where f.ItemDescription == iname select f.ItemID).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteRequisitionAll(int reqId)
        {
            List<requisitiondetail> dd = new List<requisitiondetail>();
            try
            {
                var d = (from a in cntx.requisitiondetails where a.ReqID==reqId select a);
                dd = d.ToList();
                foreach (var detail in dd)
                {
                    cntx.requisitiondetails.Remove(detail);
                }
                var req = cntx.requisitions.FirstOrDefault(f => f.ReqID == reqId);
                if (req != null)
                {
                    cntx.requisitions.Remove(req);

                }
                cntx.SaveChanges();           
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int createRequisition(requisition r)
        {
            try
            {
                requisition req = new requisition();
                req.ReqEmpId = r.ReqEmpId;
                req.ReqStatus = r.ReqStatus;
                req.ReqDate = r.ReqDate;
                req.ReqDepID = r.ReqDepID;
                cntx.requisitions.Add(req);
                cntx.SaveChanges();
                int id = req.ReqID;
                return id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void createRequisitionDetails(requisitiondetail rd)
        {
            try
            {
                requisitiondetail detail = new requisitiondetail();
                detail.ReqID = rd.ReqID;
                detail.ReqItemID = rd.ReqItemID;
                detail.ReqQuantityReq = rd.ReqQuantityReq;
                cntx.requisitiondetails.Add(detail);
                cntx.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int getDepIdByEid(int eid)
        {
            try
            {
                return (int)(from h in cntx.employees
                             where h.EmployeeID.Equals(eid)
                             select h.EmployeeDepId).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public requisition ShowRequisitionDetail(int reqId)
        {
            requisition rr = new requisition();
            try
            {
                var q = (from f in cntx.requisitions
                        where f.ReqID == reqId //&& f.ReqStatus!="pending"
                            select f).FirstOrDefault();
                rr = q;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return rr;
        }

        public List<object> ShowAllRequisitionDetailById(int rid)
        {
            List<object> itm = new List<object>();
            try
            {
                var q = (from f in cntx.requisitiondetails
                         join i in cntx.items on f.ReqItemID equals i.ItemID
                         where f.ReqID == rid //&& f.ReqStatus!="pending"
                         orderby f.ReqItemID descending
                         select new{itemid=f.ReqItemID,name=i.ItemDescription,qty=f.ReqQuantityReq}).ToList<object> ();
                itm = q;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return itm;
        }

        public bool getRequisitionByStatus(int reqId)
        {
            try
            {
                var q=(from h in cntx.requisitions
                             where h.ReqStatus.Equals("pending") && h.ReqID.Equals(reqId)
                             select h).FirstOrDefault();
                if (q != null)
                {//pending
                    return true;
                }
                else
                {//approve
                    return false;
                } 
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Department Representative
        public department getDNameByEid(int eid)
        {
            try
            {
                return (department)(from e in cntx.employees join d in cntx.departments on e.EmployeeDepId equals d.DepID where e.EmployeeID == eid select d).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<object> getAllCollectionItemByDepIdStatusDate(int eid, string status, DateTime date)
        {
            try
            {
                List<object> obj = new List<object>();


                obj = (from d in cntx.disbursements
                       join dd in cntx.disbursementdetails on d.DisbID equals dd.DisbID
                       join itm in cntx.items on dd.DisbItemID equals itm.ItemID
                       join dep in cntx.departments on d.DisbDepID equals dep.DepID
                       join e in cntx.employees on dep.DepID equals e.EmployeeDepId
                       where e.EmployeeID==eid && d.DisbStatus == status && d.DisbCreateDate < date
                       group dd by new
                       {
                           dd.DisbItemID,
                           dd.DisbItemQuantReq,
                           dd.DisbItemQuantDelivered,
                           itm.ItemQuant,
                           itm.ItemDescription,
                           dep.DepID,
                           dep.DepName
                       } into header
                       orderby header.Key.ItemDescription descending
                       select new
                       {
                           DisbItemID = header.Key.DisbItemID,
                           DisbItemQuantReq = header.Key.DisbItemQuantReq,
                           DisbItemQuantDelivered = header.Key.DisbItemQuantDelivered,
                           ItemQuant = header.Key.ItemQuant,
                           ItemDescription = header.Key.ItemDescription,
                           DepID = header.Key.DepID,
                           DepName = header.Key.DepName
                       }).ToList<object>();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void UpdateDisbursementReceiveDateByDepID(int depid)
        {
            try
            {
                List<disbursement> listd = new List<disbursement>();
                listd=(from d in cntx.disbursements where d.DisbDepID==depid && d.DisbStatus=="Ready" select d).ToList();
                foreach (disbursement dd in listd)
                {
                    dd.DisbStatus = "received";
                    dd.DisbReceiveDate = DateTime.Now;
                }
                cntx.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public collectionPoint getAllCollectionPointByDeptID(int deptid)
        {
            try
            {
                return (collectionPoint)(from d in cntx.departments join cp in cntx.collectionPoints on d.DepCollectionPointID equals cp.CollectionPointID where d.DepID==deptid select cp).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Requisition Stationery For Department Email To Department Head
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

        public List<requisitiondetail> getRequisitionDetailByRid(int rid)
        {
            try
            {
                List<requisitiondetail> dd = new List<requisitiondetail>();
                dd = (from d in cntx.requisitiondetails where d.ReqID == rid select d).ToList();
                return dd;
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
       
        //Collection Point For Department Representative Email To Store Clerk
        public List<disbursementdetail> getCollectionItemByDepIdStatusDateForEmail(int eid, string status, DateTime date)
        {
            try
            {
                List<disbursementdetail> detail = new List<disbursementdetail>();
                //detail=(from d in cntx.disbursements
                //       join dd in cntx.disbursementdetails on d.DisbID equals dd.DisbID
                //       join dep in cntx.departments on d.DisbDepID equals dep.DepID
                //       join e in cntx.employees on dep.DepID equals e.EmployeeDepId
                //       where e.EmployeeID==eid && d.DisbStatus == status && d.DisbCreateDate < date
                //            orderby dd.DisbItemID select dd).ToList();
                detail=(from dd in cntx.disbursementdetails
                            join d in cntx.disbursements on dd.DisbID equals d.DisbID
                            join dep in cntx.departments on d.DisbDepID equals dep.DepID
                            join e in cntx.employees on dep.DepID equals e.EmployeeDepId
                            where e.EmployeeID==eid && d.DisbStatus == status && d.DisbCreateDate < date
                            orderby dd.DisbItemID descending
                            select dd).ToList();
                return detail;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
