using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADSMS.Presentation.Department
{
    public partial class Department : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = new HttpCookie("usercookie");
            user = Request.Cookies["usercookie"];
            if (user != null)
            {
                lbl_username.InnerText = user.Value;
            }

        }

        //protected void btn_Logout_Click(object sender, EventArgs e)
        //{

        //}
    }
}