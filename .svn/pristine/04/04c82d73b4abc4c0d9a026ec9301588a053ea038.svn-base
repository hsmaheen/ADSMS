using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using ADSMS.DataAccess;
using System.Web.UI.WebControls;

namespace ADSMS.Presentation.Store
{
    public partial class StockReportForm : System.Web.UI.Page
    {
        DisbursementRepository_Web dser = new DisbursementRepository_Web();
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


        public void BindGrid()
        {
            List<item> datasource = new List<item>();
            datasource = dser.findLowQuantItems();
            gdv_LowStock.DataSource = datasource;
            gdv_LowStock.DataBind();




        }

        protected void gdv_LowStock_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdv_LowStock.PageIndex = e.NewPageIndex;
            //gdv_LowStock.DataBind();
            BindGrid();
        }



    }
}