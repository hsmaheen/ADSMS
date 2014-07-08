using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using ADSMS.BizLogic;
using ADSMS.DataAccess;

namespace ADSMS.Presentation.Store
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(HttpContext.Current.User.IsInRole("Store Clerk")!=true)
            //{
            //    Response.Redirect("/Presentation/Login.aspx");
            //}


        }

        protected void btn_SendEmail_Click(object sender, EventArgs e)
        {
            DisbursementService_Web dser = new DisbursementService_Web();
            string email = "seintsanthandarbo88@gmail.com";
            //List<item> items=new List<item>();
            dser.checkLowStockLevel(email);
            
        }
    }
}