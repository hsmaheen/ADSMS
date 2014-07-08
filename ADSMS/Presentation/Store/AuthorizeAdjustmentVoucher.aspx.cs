﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using System.Reflection;
using ADSMS.DataAccess;
using System.Web.Security;
namespace ADSMS.Presentation.Store
{
    public partial class AuthorizeAdjustmentVoucher : System.Web.UI.Page
    {
        String AdjustmentVoucherID
        {
            get
            {
                if (Request.QueryString["ID"] != null)
                    return Request.QueryString["ID"];
                return String.Empty;
            }
        }   

        public void UpdateAdjustmentVoucher(String status)
        {
            AdjustmentService services = new AdjustmentService();
            int userID = Convert.ToInt32(Session["userid"].ToString());
            services.updateAdjustmentVoucher(Convert.ToInt32(AdjustmentVoucherID), status, userID);
            Response.Redirect("./ViewAdjustmentVoucherListBySupervisor.aspx");

        }
        public void FillData()
        {
            
            AdjustmentService adjService = new AdjustmentService();
            var adjHeader = adjService.getAdjustmentVoucherByID(Convert.ToInt32(AdjustmentVoucherID));
            //Data From DataBase
            // a.ADVID,a.ADVDate,a.ADVStatus,a.employee.EmployeeName ,ApprovedBy =a.employee1.EmployeveName
            Type t = adjHeader.GetType();
            PropertyInfo adj_status = t.GetProperty("ADVStatus");
            PropertyInfo adj_Date = t.GetProperty("ADVDate");
            PropertyInfo adj_EmpName = t.GetProperty("StoreEmpName");

            string status = adj_status.GetValue(adjHeader, null).ToString();
            string date = adj_Date.GetValue(adjHeader, null).ToString();
            string empName = adj_EmpName.GetValue(adjHeader, null).ToString();

            lblDate.Text = date;
            lblStoreClerkID.Text = empName;

            Double total = adjService.getAdjustmentVoucherTotal(Convert.ToInt32(AdjustmentVoucherID));
            
            if (status == "Pending" )
            {
                int userID = Convert.ToInt32(Session["userid"].ToString());

                string[] roles;
                string role;
                roles= Roles.GetRolesForUser();
                role = roles[0];
                if (role == "Store Manager" && total < 250)
                {
                    btnApprove.Visible = false;
                    btnApprove.Enabled = false;
                    btnReject.Visible = false;
                    btnReject.Enabled = false;
 

                }
                else if (role == "Store Supervisor" && total >=250)
                {
                    btnApprove.Visible = false;
                    btnApprove.Enabled = false;
                    btnReject.Visible = false;
                    btnReject.Enabled = false;

                }


               

               

            }
            else
            {
                btnApprove.Visible = true;
                btnApprove.Enabled = true;

                btnReject.Visible = true;
                btnReject.Enabled = true;
            }


            dgvAdjDetails.DataSource = adjService.getAdjustmentVoucherDetail(Convert.ToInt32(AdjustmentVoucherID));
            dgvAdjDetails.DataBind();
            dgvAdjDetails.Enabled = false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }
            

            if (!IsPostBack)
            {
                if (AdjustmentVoucherID != string.Empty)
                    FillData();
            }
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            UpdateAdjustmentVoucher("Approved");
        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            UpdateAdjustmentVoucher("Rejected");

        }
    }
}