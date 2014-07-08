using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;
namespace ADSMS.Presentation.Store
{
    public partial class ViewStockAdjustmentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }


            if (!IsPostBack)
            {
                acceptAdjustmentVoucher();
            }
        }

        void acceptAdjustmentVoucher()
        {
            AdjustmentService service = new AdjustmentService();
            dgvStockAdjustmentList.DataSource = service.getAdjustmentVoucher();
            dgvStockAdjustmentList.DataBind();
           
        }
    }
}