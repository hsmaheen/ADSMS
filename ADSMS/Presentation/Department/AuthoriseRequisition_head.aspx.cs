﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;
using System.Reflection;
using System.Web.Security;

namespace ADSMS.Presentation.Department
{
    public partial class AuthoriseRequisition_head : System.Web.UI.Page
    {
        RequisitionService _RequisitionService;
        DepartmentService _DepartmentService;
        EmployeeService _EmployeeService;
        ItemService _ItemService;

        List<item> itemList;
        requisition currentrequisition;
        object ObjToGetDetails;
        employee currentEmployee;
        department currentDepartment;

        protected void Page_Load(object sender, EventArgs e)
        {
            bool isTempHead = false;
            RegistrationService rser = new RegistrationService();
            string userId = HttpContext.Current.User.Identity.Name;
            isTempHead = rser.IsTempDepHead(userId);

            if ((HttpContext.Current.User.IsInRole("Department Head") != true) && (isTempHead != true))
            {
                Response.Redirect("/Presentation/Login.aspx");

            }

            _RequisitionService = new RequisitionService();
            _EmployeeService = new EmployeeService();
            _DepartmentService = new DepartmentService();
            _ItemService = new ItemService();

            if (!IsPostBack)
            {
                int QueryStringReqID = Int32.Parse(Request.QueryString["ID"]);

                var Req_Emp_DeptDetails = _RequisitionService.GetReq_Emp_DeptDetailsListByReqId(QueryStringReqID);

                Type t = Req_Emp_DeptDetails.GetType();

                PropertyInfo EmployeeName = t.GetProperty("EmployeeName");
                lblEmployeeName.Text = Convert.ToString(EmployeeName.GetValue(Req_Emp_DeptDetails,null));
                PropertyInfo EmpNo = t.GetProperty("EmployeeID");
                lblEmpNo.Text = Convert.ToString(EmpNo.GetValue(Req_Emp_DeptDetails, null));
                PropertyInfo EmpEmail = t.GetProperty("EmployeeEmail");
                lblEmpEmail.Text = Convert.ToString(EmpEmail.GetValue(Req_Emp_DeptDetails, null));

                PropertyInfo DeptName = t.GetProperty("DepName");
                lblDeptName.Text = Convert.ToString(DeptName.GetValue(Req_Emp_DeptDetails, null));
                PropertyInfo DeptCode = t.GetProperty("DepID");
                lblDeptCode.Text = Convert.ToString(DeptCode.GetValue(Req_Emp_DeptDetails, null));
                PropertyInfo reason=t.GetProperty("ReqReason");
                txtReason.Text = Convert.ToString(reason.GetValue(Req_Emp_DeptDetails, null));

                PropertyInfo status= t.GetProperty("ReqStatus");
                string searchStatus = Convert.ToString(status.GetValue(Req_Emp_DeptDetails, null));
                if (searchStatus == "approved")
                {
                    btnConfirmRequisition.Enabled = false;
                    btnRejectRequisition.Enabled = false;
                    txtReason.Enabled = false;
                    PanelApprove.Visible = true;
                }

                loadItemGridViewData(QueryStringReqID);
            }
            
        }

        private void loadItemGridViewData(int searchReqID)
        {
            List<object> itemList = new List<object>();
            itemList=_ItemService.GetItemListByReqID(searchReqID);

            if (itemList!=null)
            {
                gvItemDetails.DataSource = itemList;
                gvItemDetails.DataBind();
            }
            else
            {
                PanelError.Visible = true;
            }
        }

        //private void loadDataFromQueryString(int ReqId)
        //{
        //    var Req_Emp_DeptDetails = _RequisitionService.GetReq_Emp_DeptDetailsListByReqId(ReqId);     

        //    if (Req_Emp_DeptDetails != null)
        //    {
        //        Type t = Req_Emp_DeptDetails.GetType();

        //        lblEmployeeName.Text = t.GetProperty("EmployeeName").ToString();
        //        lblEmpNo.Text = t.GetProperty("EmployeeID").ToString();
        //        lblEmpEmail.Text = t.GetProperty("EmployeeEmail").ToString();

        //        lblDeptName.Text = t.GetProperty("DepName").ToString();
        //        lblDeptCode.Text = t.GetProperty("DepID").ToString();
        //    }
        //    else
        //    {
        //        PanelError.Visible = true;
        //    }
            
        //}

        protected void btnConfirmRequisition_Click(object sender, EventArgs e)
        {
            string reason;
            int i = Convert.ToInt32(Session["userid"].ToString());
            int QueryStringReqID = Int32.Parse(Request.QueryString["ID"]);

            if (txtReason.Text == "")
            {
                reason = "";
            }
            else
            {
                reason = txtReason.Text;
            }
            _RequisitionService.UpdateConfirmRequisition(QueryStringReqID,"approved",reason,i);
            Response.Redirect("~/Presentation/Department/RequisitionList_haead.aspx");
        }

        protected void btnRejectRequisition_Click(object sender, EventArgs e)
        {
            string reason;
            int userID = Convert.ToInt32(Session["userid"].ToString());
            int QueryStringReqID = Int32.Parse(Request.QueryString["ID"]);

            if (txtReason.Text == "")
            {
                reason = "";
            }
            else
            {
                reason = txtReason.Text;
            }
            _RequisitionService.UpdateConfirmRequisition(QueryStringReqID, "reject", reason, userID);
            Response.Redirect("~/Presentation/Department/RequisitionList_haead.aspx");
        }
    }
}