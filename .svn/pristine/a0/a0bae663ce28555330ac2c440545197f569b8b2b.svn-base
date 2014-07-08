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
    public partial class RequistionDetails_DepRep : System.Web.UI.Page
    {

        Service_phyo se = new Service_phyo();
        requisition req = new requisition();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Department Employee") != true)
            {
                Response.Redirect("/Presentation/Login.aspx");

            }

            if (!IsPostBack)
            {
                int id;
                int.TryParse(Request.QueryString["requisitionId"].ToString(), out id);
                req = se.ShowRequisitionDetail(id);
                if (req != null)
                {
                    lblReqStatus.Text = req.ReqStatus;
                    lblRDate.Text = req.ReqDate.ToShortDateString();
                    if (req.ReqApproveEmpID == null)
                    {
                        lblEName.Text = "Still Pending";
                    }
                    else
                    {
                        lblEName.Text = req.employee.EmployeeName;
                    }

                    if (req.ReqReason == null || req.ReqReason == " " || req.ReqReason == string.Empty)
                    {
                        lblReason.Text = "Still Pending";
                    }
                    else
                    {
                        lblReason.Text = req.ReqReason;
                    }
                    if (req.ReqApproveDate.ToString() == null || req.ReqApproveDate.ToString() == " " || req.ReqApproveDate.ToString() == string.Empty)
                    {
                        lblADate.Text = "Still Pending";
                    }
                    else
                    {
                        lblADate.Text = req.ReqApproveDate.ToString();
                    }
                }
                if (req.ReqStatus == "pending")
                {
                    btnDelete.Visible = true;
                }
                else
                {
                    btnDelete.Visible = false;
                }
                Binding();
            }
        }

        public void Binding()
        {
            int id;
            int.TryParse(Request.QueryString["requisitionId"].ToString(), out id);
            List<object> listd = new List<object>();
            listd = se.ShowAllRequisitionDetailById(id);
            if (listd.Count > 0)
            {
                gvDetail.DataSource = listd;
                gvDetail.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id;
            int.TryParse(Request.QueryString["requisitionId"].ToString(), out id);
            se.DeleteRequisitionAll(id);
            Response.Redirect("RequisitionHistory_Emp.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("RequisitionHistory_DepRep.aspx");
        }

        protected void gvDetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetail.PageIndex = e.NewPageIndex;
            Binding();
        }
    }
}