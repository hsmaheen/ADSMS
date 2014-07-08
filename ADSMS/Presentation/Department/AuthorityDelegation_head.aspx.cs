using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;
using System.Web.Security;

namespace ADSMS.Presentation.Department
{
    public partial class AuthorityDelegation : System.Web.UI.Page
    {

        protected string FromDate { get; set; }
        protected string ToDate { get; set; }

        int Fromyear, Frommonth, Fromday;
        int Toyear, Tomonth, Today;

        EmployeeService _EmployeeService;
        DepartmentService _DepartmentService;
        DelegationService _DelegationService;

        employee currentEmp;
        department currentDept;
        delegation Currentdelegation;
        List<employee> employeeList;

        protected void Page_Load(object sender, EventArgs e)
        {
            bool isTempHead = false;
            RegistrationService rser = new RegistrationService();
            string userId = HttpContext.Current.User.Identity.Name;
            isTempHead=rser.IsTempDepHead(userId);

            if ((HttpContext.Current.User.IsInRole("Department Head") != true) && (isTempHead != true))
            {
                Response.Redirect("/Presentation/Login.aspx");

            }


            _EmployeeService = new EmployeeService();
            _DepartmentService = new DepartmentService();
            _DelegationService = new DelegationService();

            if (!IsPostBack)
            {
                #region ** ClearAll
                ClearNewAllData();
                BtnEnable(false);
                #endregion

                #region ** DataBind for ddl with DeptID
                int LoginId = Convert.ToInt32(Session["userid"].ToString());

                currentEmp = new employee();
                currentEmp = _EmployeeService.GetEmployeeDetailsByEmpID(LoginId);

                int curdeptID = currentEmp.EmployeeDepId ?? default(int);
                employeeList = new List<employee>();
                employeeList = _EmployeeService.GetEmployeeDetailsByDeptID(curdeptID, LoginId);
                ddlEmpName.DataSource = employeeList;
                ddlEmpName.DataBind();
                #endregion

                searchDelegation();
            }
        }

        public bool searchDelegation()
        {
            int LoginId = Convert.ToInt32(Session["userid"].ToString());

            currentEmp = new employee();
            currentEmp = _EmployeeService.GetEmployeeDetailsByEmpID(LoginId);

            Currentdelegation = new delegation();
            Currentdelegation = _DelegationService.SearchDelegationWithDelgApproveEmpId_Status_Date(LoginId, "approved");

            if (Currentdelegation != null)
            {
                PanelSubmit.Visible = true;
                lblDelegated.Text = "You may assign a temporary Department Head.";

                ddlEmpName.SelectedValue = Currentdelegation.DelgEmpID.ToString();
                txtEmpID.Text = Currentdelegation.DelgEmpID.ToString();
                currentEmp = new employee();
                currentEmp = _EmployeeService.GetEmployeeDetailsByEmpID(Currentdelegation.DelgEmpID);
                txtEmpContact.Text = currentEmp.EmployeeContact.ToString();
                this.FromDate = Currentdelegation.DelgFromDate.ToString("MM/dd/yyyy");
                this.ToDate = Currentdelegation.DelgToDate.ToString("MM/dd/yyyy");

                BtnEnable(true);
                return true;
            }
            else
            {
                BtnEnable(false);
                return false;
            }
        }

        protected void EmpName_SelectedIndexChanged(object sender, EventArgs e)
        {
            #region ** ClearAll
            ClearNewAllData();
            BtnEnable(false);
            #endregion

            #region ** DataBindinEmployeeDetails
            currentEmp = new employee();
            currentEmp = _EmployeeService.GetEmployeeDetailsByEmpID(int.Parse(ddlEmpName.SelectedItem.Value));

            if (currentEmp != null)
            {
                txtEmpContact.Text = currentEmp.EmployeeContact.ToString();
                txtEmpID.Text = ddlEmpName.SelectedItem.Value;
            }
            else
            {
                PanelError.Visible = true;
            }
            #endregion

            BtnEnable(true);
            btnResetDelegation.Enabled = false;

            #region ** CheckDelegationForLoginId
            int LoginId = Convert.ToInt32(Session["userid"].ToString());

            currentEmp = new employee();
            currentEmp = _EmployeeService.GetEmployeeDetailsByEmpID(int.Parse(ddlEmpName.SelectedItem.Value));

            Currentdelegation = new delegation();
            Currentdelegation = _DelegationService.SearchDelegationWithDelgEmpId_ApprovedID_Status_Date(int.Parse(ddlEmpName.SelectedItem.Value), LoginId,"approved");

            if (Currentdelegation != null)
            {
                PanelSubmit.Visible = true;
                lblDelegated.Text = "You may assign a temporary Department Head.";

                ddlEmpName.SelectedValue = Currentdelegation.DelgEmpID.ToString();
                txtEmpID.Text = Currentdelegation.DelgEmpID.ToString();
                txtEmpContact.Text = currentEmp.EmployeeContact.ToString();
                this.FromDate = Currentdelegation.DelgFromDate.ToString("MM/dd/yyyy");
                this.ToDate = Currentdelegation.DelgToDate.ToString("MM/dd/yyyy");
                btnResetDelegation.Enabled = true;
                btnSubmitDeligation.Enabled = true;

            }
            #endregion
        }

        #region Comment
        //protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
        //{
        //    Calendar1.Visible = true;
        //}

        //protected void imgbtnCalendar2_Click(object sender, ImageClickEventArgs e)
        //{
        //    Calendar2.Visible = true;
        //}

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    fromDateTextBox.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}

        //protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        //{
        //    toDateTextBox.Text = Calendar2.SelectedDate.ToShortDateString();
        //    Calendar2.Visible = false;
        //}
        #endregion

        protected void btnSubmitDeligation_Click(object sender, EventArgs e)
        {
            int LoginId = Convert.ToInt32(Session["userid"].ToString());

            //Check Is there have Delegation Firstly
            delegation Firstdelegation = new delegation();
            Firstdelegation = _DelegationService.SearchDelegationWithDelgApproveEmpId_Status_Date(LoginId, "approved");

            //Check Is there have Delegation for dropdownlist
            Currentdelegation = new delegation();
            Currentdelegation = _DelegationService.SearchDelegationWithDelgEmpId_ApprovedID_Status_Date(int.Parse(ddlEmpName.SelectedValue), LoginId, "approved");

            #region ** Bind data to update or save delegation
            delegation ToUpdateDelegation = new delegation();
            ToUpdateDelegation.DelgEmpID = int.Parse(ddlEmpName.SelectedItem.Value);
            ToUpdateDelegation.DelgStatus = "approved";
            ToUpdateDelegation.DelApproveEmpID = LoginId;

            string fromdate_txt = Page.Request.Form["dpd1"].ToString();
            String[] FromDateArr = fromdate_txt.Split('/');
            Fromyear = Int32.Parse(FromDateArr[2]);
            Frommonth = Int32.Parse(FromDateArr[0]);
            Fromday = Int32.Parse(FromDateArr[1]);
            DateTime FromDateTime = new DateTime(Fromyear, Frommonth, Fromday);
            ToUpdateDelegation.DelgFromDate = FromDateTime;

            string todate_txt = Page.Request.Form["dpd2"].ToString();
            String[] ToDateArr = todate_txt.Split('/');
            Toyear = Int32.Parse(ToDateArr[2]);
            Tomonth = Int32.Parse(ToDateArr[0]);
            Today = Int32.Parse(ToDateArr[1]);
            DateTime ToDateTime = new DateTime(Toyear, Tomonth, Today);
            ToUpdateDelegation.DelgToDate = ToDateTime;

            #endregion

            // Save
            if (Firstdelegation == null && Currentdelegation==null)
            {
                _DelegationService.SaveNewDelegation(ToUpdateDelegation);

                ClearNewAllData();
                BtnEnable(false);

                PanelSubmit.Visible = true;
            }

            // Update
            else if (Firstdelegation != null && Firstdelegation.DelgEmpID == int.Parse(ddlEmpName.SelectedValue) && Currentdelegation!=null)
            {
                ToUpdateDelegation.DelgID = Currentdelegation.DelgID;
                _DelegationService.UpdateDelegation(ToUpdateDelegation);

                ClearNewAllData();
                BtnEnable(false);

                PanelSubmit.Visible = true;
            }
            else
            {
                ClearNewAllData();
                BtnEnable(false);

                PanelErrorSave.Visible = true;
                lblErrorSave.Text = "The Temporay Department Head has already been assigned.";
            }
        }

        protected void btnResetDelegation_Click(object sender, EventArgs e)
        {
            int LoginId = Convert.ToInt32(Session["userid"].ToString());

            Currentdelegation = new delegation();
            Currentdelegation = _DelegationService.SearchDelegationWithDelgEmpId_ApprovedID_Status_Date(int.Parse(ddlEmpName.SelectedValue), LoginId, "approved");

            delegation ToUpdateDelegation = new delegation();

            ToUpdateDelegation.DelgID = Currentdelegation.DelgID;
            ToUpdateDelegation.DelApproveEmpID = Currentdelegation.DelApproveEmpID;
            ToUpdateDelegation.DelgEmpID = Currentdelegation.DelgEmpID;
            ToUpdateDelegation.DelgFromDate = Currentdelegation.DelgFromDate;
            ToUpdateDelegation.DelgToDate = Currentdelegation.DelgToDate;
            ToUpdateDelegation.DelgStatus = "cancel";

            _DelegationService.UpdateDelegation(ToUpdateDelegation);

            ClearNewAllData();
            BtnEnable(false);

            PanelCancel.Visible = true;
        }

        public void ClearNewAllData()
        {
            PanelCancel.Visible = false;
            PanelError.Visible = false;
            lblDelegated.Text = "";
            PanelSubmit.Visible = false;
            lblErrorSave.Text = "";
            PanelErrorSave.Visible = false;

            txtEmpContact.Text = "";
            txtEmpID.Text = "";

            this.FromDate = "";
            this.ToDate = "";
        }

        public void ClearNewPanel()
        {
            PanelCancel.Visible = false;
            PanelError.Visible = false;
            lblDelegated.Text = "";
            PanelSubmit.Visible = false;
            lblErrorSave.Text = "";
            PanelErrorSave.Visible = false;
        }

        public void Cleardatetime()
        {
            this.FromDate = "";
            this.ToDate = "";
        }

        public void BtnEnable(bool enable)
        {
            btnResetDelegation.Enabled = enable;
            btnSubmitDeligation.Enabled = enable;
        }
    }
}
