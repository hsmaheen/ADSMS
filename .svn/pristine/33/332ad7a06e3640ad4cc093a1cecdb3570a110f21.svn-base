using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;

namespace ADSMS.Presentation.Department
{
    public partial class StationeryCollectionDetails_head : System.Web.UI.Page
    {
        EmployeeService _EmployeeService;
        DepartmentService _DepartmentService;

        employee currentEmployee;
        department currentDepartment;
        List<employee> employeeList;

        public int CurrentEmpIDForDeptRep;

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

            _EmployeeService = new EmployeeService();
            _DepartmentService = new DepartmentService();

            if (!IsPostBack)
            {
                int i = Convert.ToInt32(Session["userid"].ToString());
                currentEmployee = new employee();
                currentEmployee = _EmployeeService.GetEmployeeDetailsByEmpID(i);

                if (currentEmployee!=null)
                {
                    int DepID = currentEmployee.EmployeeDepId ?? default(int);
                    currentDepartment = new department();
                    currentDepartment = _DepartmentService.GetdepartmentDetailsByDeptID(DepID);

                    lblDeptName.Text = currentDepartment.DepName;
                    txtDeptContactName.Text = currentDepartment.DepContactName;
                    txtDeptContactNum.Text = currentDepartment.DepContactNumber.ToString();
                    lblCurrentDeptRep.Text = currentDepartment.DepRepName;
                    
                }
                else
                {
                    PanelError.Visible = true;
                }

                int curdeptID = currentEmployee.EmployeeDepId ?? default(int);
                employeeList = new List<employee>();
                employeeList = _EmployeeService.GetEmployeeDetailsByDeptID(curdeptID, i);

                if (employeeList!=null)
                {
                    ddlDeptRep.DataSource = employeeList;
                    ddlDeptRep.DataTextField = "EmployeeName";
                    ddlDeptRep.DataValueField = "EmployeeID";
                    ddlDeptRep.DataBind();
                }
                else
                {
                    PanelError.Visible = true;
                }
                ddlCollectionID.SelectedValue = currentDepartment.DepCollectionPointID.ToString();
            }
            
        }

        protected void lnkbtnChangeDeptRepName_Click(object sender, EventArgs e)
        {
            PanelDeptRepName.Visible = true;
        }

        protected void lnkbtnCancel_Click(object sender, EventArgs e)
        {
            PanelDeptRepName.Visible = false;
        }

        public void ResetAll()
        {
            txtDeptContactName.Text = "";
            txtDeptContactNum.Text = "";
            lblCurrentDeptRep.Text = "";
            PanelError.Visible = false;
            PanelSubmit.Visible = false;
            PanelDeptRepName.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            currentDepartment = new department();
            currentEmployee = new employee();

            int UserId = Convert.ToInt32(Session["userid"].ToString());
            currentEmployee = _EmployeeService.GetEmployeeDetailsByEmpID(UserId);

            if (currentEmployee!=null)
            {
                #region Update Department
                int DepID = currentEmployee.EmployeeDepId ?? default(int);
                currentDepartment = _DepartmentService.GetdepartmentDetailsByDeptID(DepID);

                if (currentDepartment!=null)
                {
                    #region Make All Dept Rep to be 0 If there is existing
                    employeeList = new List<employee>();
                    employeeList = _EmployeeService.GetEmployeeDetailsByDeptID(DepID, UserId);
                    foreach (employee emp in employeeList)
                    {
                        _EmployeeService.UpdateEmployeeDetailsTobeDeptRep(emp.EmployeeID, false);
                    }
                    #endregion

                    department toUpdateDept = new department();
                    toUpdateDept.DepID = currentDepartment.DepID;
                    toUpdateDept.DepName = currentDepartment.DepName;
                    toUpdateDept.DepContactName = txtDeptContactName.Text;
                    toUpdateDept.DepContactNumber = Convert.ToInt32(txtDeptContactNum.Text);
                    toUpdateDept.DepFax = currentDepartment.DepFax;
                    toUpdateDept.DepCollectionPointID = int.Parse(ddlCollectionID.SelectedValue);
                    toUpdateDept.DepHeadName = currentDepartment.DepHeadName;

                    if (PanelDeptRepName.Visible == true)
                    {
                        toUpdateDept.DepRepName = ddlDeptRep.SelectedItem.Text;
                        _EmployeeService.UpdateEmployeeDetailsTobeDeptRep(int.Parse(ddlDeptRep.SelectedValue),true);
                    }
                    else
                    {
                        toUpdateDept.DepRepName = currentDepartment.DepRepName;
                    }
                    _DepartmentService.UpdateDepartment(toUpdateDept);
                    ResetAll();
                    PanelSubmit.Visible = true;

                }
                else
                {
                    PanelError.Visible = true;
                }
                #endregion

            }
            else
            {
                PanelError.Visible = true;
            }

            //int EmpID = int.Parse(ddlDeptRep.SelectedItem.Value);
            //currentEmployee = new employee();
            //currentEmployee = _EmployeeService.GetEmployeeDetailsByEmpID(EmpID);

            //if (currentEmployee != null)
            //{
            //    if (currentEmployee.EmpIsDepRep == false)
            //    {
            //        _EmployeeService.UpdateEmployeeDetailsTobeDeptRep(EmpID, true);
            //        ResetAll();
            //        PanelSubmit.Visible = true;
            //    }
            //    else
            //    {
            //        PanelSubmit.Visible = true;
            //    }
            //}
            //else
            //{
            //    PanelError.Visible = true;
            //}
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ResetAll();
        }

        //protected void lnkbtnDelete_Click(object sender, EventArgs e)
        //{
        //    _EmployeeService.UpdateEmployeeDetailsTobeDeptRep(int.Parse(ddlDeptRep.SelectedValue), false);

        //    int i = Convert.ToInt32(Session["userid"].ToString());
        //    currentEmployee = new employee();
        //    currentEmployee = _EmployeeService.GetEmployeeDetailsByEmpID(i);
        //    if (currentEmployee != null)
        //    {
        //        int DepID = currentEmployee.EmployeeDepId ?? default(int);
        //        _DepartmentService.UpdateDeptRapNameById(DepID, "");
        //    }
        //}
    }
}