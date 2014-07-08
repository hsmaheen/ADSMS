using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;

namespace ADSMS.Presentation.Store
{
    public partial class DisbursementHistory : System.Web.UI.Page
    {

        DisbursementServie ds = new DisbursementServie();

        public void BindGrid()
        {
            dgvDisbHistory.DataSource = ds.getDisbHistory();
            dgvDisbHistory.DataBind();

        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }


            if (!IsPostBack)
            {

                BindGrid();
            }
        }

        protected void dgvDisbHistory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string disb_id=dgvDisbHistory.Rows[dgvDisbHistory.SelectedIndex].Cells[0].Text;
            Response.Redirect("DisbursementHistory_Details.aspx?id="+disb_id);
           
        }
        protected void dgvDisbHistory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvDisbHistory.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void btnDetail_Command(object sender, CommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("DisbursementHistory_Details.aspx?disbID="+id);
        }
    }
}