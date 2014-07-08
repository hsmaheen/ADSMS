﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.DataAccess;
using ADSMS.BizLogic;
using System.Web.Security;

namespace ADSMS.Presentation.Department
{
    public partial class ViewCollectionDetails_Rep : System.Web.UI.Page
    {
        Service_phyo service = new Service_phyo();
        List<object> obj = new List<object>();
        department dept = new department();
        collectionPoint cp = new collectionPoint();
        stationeryEntities se = new stationeryEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            noContent.Visible = false;
            if (HttpContext.Current.User.IsInRole("Department Employee") == true)
            {
                string username = HttpContext.Current.User.Identity.Name;
                employee newemp = new employee();
                var q = from emp in se.employees
                        where emp.EmployeeEmail == username
                        select emp;
                newemp = q.FirstOrDefault();

                if(newemp.EmpIsDepRep!=true)
                {
                    Response.Redirect("/Presentation/Login.aspx");
                }

            }
            else
            {
                Response.Redirect("/Presentation/Login.aspx");
            }

            if (!IsPostBack)
            {
                int eid;
                int.TryParse(Session["userid"].ToString(),out eid);
                dept = service.getDNameByEid(eid);
                lblDName.Text = dept.DepName;
                binding();
            }
        }
        public void binding()
        {
            int eid;
            int.TryParse(Session["userid"].ToString(),out eid);
            string status="Ready";
            DateTime date=DateTime.Today.AddDays(1);
            obj = service.getAllCollectionItemByDepIdStatusDate(eid, status, date);
            gvRep.DataSource = obj;
            gvRep.DataBind();
            if (obj.Count > 0)
            {
                btnConfirm.Visible = true;
                dept = service.getDNameByEid(eid);
                cp = service.getAllCollectionPointByDeptID(dept.DepID);
                lblAddress.Text = cp.CollectionPointAddress;
                lblTime.Text = "Collection Time : " + cp.CollectionPointTime;
                lblDate.Text = "Collection Date : " + cp.CollectionPointDate;
                divmap.Visible = true;
                lblAdd.Visible = true;
                lblAddress.Visible = true;
                tot_content.Visible = true;
                template.Visible = true;
            }
            else
            {
                //btnConfirm.Visible = false;
                //divmap.Visible = false;
                //lblAdd.Visible = false;
                //lblAddress.Visible = false;
                tot_content.Visible = false;
                noContent.Visible = true;
                template.Visible = false;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int eid;
            int.TryParse(Session["userid"].ToString(), out eid);
            dept = service.getDNameByEid(eid);
            service.sendEmailToStoreClerk(eid);
            int deptId = dept.DepID;
            service.UpdateDisbursementReceiveDateByDepID(deptId);
            binding();
        }
    }
}