using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;
using System.Net.Mail;
namespace ADSMS.DataAccess
{
    public class RequisitionRepository
    {
        stationeryEntities entities;
        List<requisition> currentRequisitionList;
        List<object> obj;
        object curObj;

        public RequisitionRepository()
        {
            entities = new stationeryEntities();
        }
        public object GetReq_Emp_DeptDetailsListByReqId(int ReqId)
        {
            try
            {
                curObj = new object();
                var query = (from rq in entities.requisitions
                             from emp in entities.employees
                             from dep in entities.departments
                             where dep.DepID == emp.EmployeeDepId && rq.ReqDepID == dep.DepID && rq.ReqEmpId == emp.EmployeeID
                             && rq.ReqID == ReqId
                             select new
                             {
                                 rq.ReqID,
                                 rq.ReqEmpId,
                                 rq.ReqStatus,
                                 rq.ReqDate,
                                 rq.ReqApproveDate,
                                 rq.ReqReason,
                                 rq.ReqApproveEmpID,
                                 rq.ReqDepID,
                                 emp.EmployeeID,
                                 emp.EmployeeName,
                                 emp.EmployeeEmail,
                                 dep.DepName,
                                 dep.DepID
                             });
                curObj = query.FirstOrDefault();
                return curObj;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public String FromDS()
        {
            return "from data access";
        }
        int ParseOrZero(string text)
        {
            int value;
            if (int.TryParse(text, out value))
                return value;
            else
                return 0;
        }
        //By Seint san
        public List<RequisitionItems> GetRequisitionItemGroupByItem() 
        {
            //select header rental
            //var request =entities.requisitions.Where( req => req.ReqDate <  DateTime.Today.Date && req.ReqStatus == "approved");


            var query = from r in entities.requisitions
                        join rdetail in entities.requisitiondetails on r.ReqID equals rdetail.ReqID
                        where (r.ReqDate< DateTime.Today.Date && (r.ReqStatus =="approved" || r.ReqStatus =="outstanding"))
                        group rdetail by new { rdetail.item.category.CategoryID , rdetail.item.category.CategoryName} into c
                        select new RequisitionItems
                        {
                            CategoryID = c.Key.CategoryID.ToString(),
                            CategoryName = c.Key.CategoryName.ToString(),
                            Quantity = c.Sum(g => g.ReqQuantityReq).ToString()
                        };
            return query.ToList<RequisitionItems>();
           
        }

        //By Seint San
        public List<RequisitionItemsDetail> GetRequisitionDetailItemGroupByItem(String categoryID)
        {
            //select header rental
            //var request =entities.requisitions.Where( req => req.ReqDate <  DateTime.Today.Date && req.ReqStatus == "approved");

            categoryID = "6";
            var query = from r in entities.requisitions
                        join rdetail in entities.requisitiondetails on r.ReqID equals rdetail.ReqID
                        join i in entities.items on  rdetail.ReqItemID equals i.ItemID

                        where (r.ReqApproveDate < DateTime.Today.Date && rdetail.ReqStatus == "approved" && rdetail.requisition.ReqStatus != null &&
                         i.ItemID == rdetail.ReqItemID &&
                         rdetail.ReqID == r.ReqID)
                        group rdetail by new { rdetail.item.ItemID, rdetail.item.ItemDescription, rdetail.item.ItemQuant } into c
                        select new RequisitionItemsDetail
                        {
                            ItemID =c.Key.ItemID,
                            ItemDescription =c.Key.ItemDescription,
                            ItemQuant =c.Key.ItemQuant,
                            RequestedQuantity = c.Sum(g => g.ReqQuantityReq).ToString()
                        };
            return query.ToList<RequisitionItemsDetail>();

        }

        public object GetRequisitionList(int ReqId)
        {
            try
            {
                curObj = new object();
                var query = (from rq in entities.requisitions
                             from emp in entities.employees
                             from dep in entities.departments
                             where dep.DepID == emp.EmployeeDepId && rq.ReqDepID == dep.DepID && rq.ReqEmpId == emp.EmployeeID 
                             && rq.ReqID == ReqId
                             select new
                             {
                                 rq.ReqID,
                                 rq.ReqEmpId,
                                 rq.ReqStatus,
                                 rq.ReqDate,
                                 rq.ReqApproveDate,
                                 rq.ReqReason,
                                 rq.ReqApproveEmpID,
                                 rq.ReqDepID,
                                 emp.EmployeeID,
                                 emp.EmployeeName,
                                 emp.EmployeeEmail,
                                 dep.DepName,
                                 dep.DepID
                             });
                curObj = query.FirstOrDefault();
                return curObj;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<object> GetRequisitionListForGv(int ReqDeptId)
        {
            try
            {
                obj = new List<object>();
                var query = (from rq in entities.requisitions
                             from emp in entities.employees
                             from dep in entities.departments
                             where dep.DepID==emp.EmployeeDepId && rq.ReqDepID==dep.DepID && rq.ReqEmpId==emp.EmployeeID && rq.ReqDepID==ReqDeptId && (rq.ReqStatus=="pending" || rq.ReqStatus=="approved" || rq.ReqStatus=="reject")
                                          select new
                                          {
                                              rq.ReqID,
                                              rq.ReqEmpId,
                                              rq.ReqStatus,
                                              rq.ReqDate,
                                              rq.ReqApproveDate,
                                              rq.ReqReason,
                                              rq.ReqApproveEmpID,
                                              rq.ReqDepID,
                                              emp.EmployeeID,emp.EmployeeName
                                          });
                obj = query.ToList<object> ();
                return obj;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        public List<object> GetRequisitionListByStatus(int ReqDeptId, string searchReqStatus)
        {
            try
            {
                obj = new List<object>();
                var q = (from rq in entities.requisitions
                             from emp in entities.employees
                             from dep in entities.departments
                             where dep.DepID==emp.EmployeeDepId && rq.ReqDepID==dep.DepID && rq.ReqEmpId==emp.EmployeeID
                             && rq.ReqDepID == ReqDeptId && rq.ReqStatus == searchReqStatus
                                          select new
                                          {
                                              rq.ReqID,
                                              rq.ReqEmpId,
                                              rq.ReqStatus,
                                              rq.ReqDate,
                                              rq.ReqApproveDate,
                                              rq.ReqReason,
                                              rq.ReqApproveEmpID,
                                              rq.ReqDepID,
                                              emp.EmployeeID,emp.EmployeeName
                                          });
                obj = q.ToList<object>();
                return obj;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        public requisition GetRequisitionDetailsByID(int searchReqID)
        {
            try
            {
                requisition currentreq=new requisition();
                currentreq = (from r in entities.requisitions
                         where r.ReqID == searchReqID
                         select r).FirstOrDefault();
                return currentreq;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void UpdateConfirmRequisition(int ReqIDtoUpdate,string status,string reason,int LoginID)
        {
            try
            {
                requisition requisition=new DataAccess.requisition();
                requisition = (from r in entities.requisitions
                         where r.ReqID == ReqIDtoUpdate
                         select r).FirstOrDefault();
                if (requisition!=null)
                {
                    requisition.ReqStatus = status;
                    requisition.ReqApproveDate = DateTime.UtcNow;
                    requisition.ReqReason = reason;
                    requisition.ReqApproveEmpID = LoginID;
                    entities.SaveChanges();
                }

                List<requisitiondetail> requisitionDetailsList = new List<requisitiondetail>();
                requisitionDetailsList=(from rd in entities.requisitiondetails
                         where rd.ReqID == ReqIDtoUpdate
                         select rd).ToList();
                if (requisitionDetailsList!=null)
	            {
		            foreach (requisitiondetail curdetail in requisitionDetailsList)
	                {
                        curdetail.ReqStatus = status;
                        entities.SaveChanges();
	                }
	            }

                 String empID ;

                 var empselect = from employye in entities.employees
                                 where employye.EmployeeID == requisition.ReqEmpId
                                 select employye;
                 employee e = empselect.SingleOrDefault();

                                
                
          

            //string emailID = email;
            //send email
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("sa37adt3@gmail.com");
            //mail.To.Add(new MailAddress(emailID));
            //mail.To.Add(new MailAddress(e.EmployeeEmail));
            mail.To.Add(new MailAddress("seintsanthandarbo88@gmail.com"));
            mail.Subject = "Request Stationery For Department :";
            String Header = "<head>"
                    + "<title>TODO supply a title</title>"
                    + "<meta charset=\"UTF-8\">"
                    + " <meta name=\"viewport\" content=\"width=device-width\">"
                    + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/flatly/bootstrap.css\">"
                    + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/assets/css/bootswatch.min.css\">"
                    + " </head>";
            String BodyStart = "<body>";
            String BodyContent = "<div class=\"bs-docs-section\">"
                    + ""
                    + "<div class=\"row\">"
                    + "<div class=\"col-lg-12\">"
                    + "<div class=\"page-header\">"
                    + "<h2 id=\"tables\">Requisition Stationery For Department</h2>"
                    + "</div>"
                    + "<div class=\"bs-example table-responsive\"><br/>"
                    + "Employee Name : " + e.EmployeeName + "<br/><br/><br/>"
                    + "Your requisition has been " +requisition.ReqStatus;
                    //+ "<table class=\"table table-striped table-hover \">"
                    //+ "<thead>"
                    //+ " <tr>"
                    //+ "<th>Item ID</th>"
                    //+ " <th> Item Description </th>"
                    //+ "  <th> Quantity </th>"
                    //+ " </tr>"
                    //+ " </thead>";
            //String TableContent = "<tbody>";
            //foreach (requisitiondetail it in detail)
            //{
            //    string itmname = requisition.getItmNameByItmid(it.ReqItemID);
            //    TableContent += "<tr>";
            //    TableContent += "<td>";
            //    TableContent += "<td>" + it.ReqItemID + "</td>";
            //    TableContent += "<td>" + itmname + "</td>";
            //    TableContent += "<td>" + it.ReqQuantityReq + "</td>";
            //    TableContent += "</tr>";
            //}

            mail.Body = Header + BodyStart + BodyContent ;

            mail.IsBodyHtml = true;

            SmtpClient sc = new SmtpClient();
            sc.Host = "smtp.gmail.com";
            sc.Port = 25;
            sc.Credentials = new System.Net.NetworkCredential("sa37adt3@gmail.com", "12345678!");
            sc.EnableSsl = true;
            sc.Send(mail);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        
    }
}
