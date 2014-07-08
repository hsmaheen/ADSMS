using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;

namespace ADSMS.Presentation.Department
{
    public partial class DepHead : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool isTempHead = false;
            RegistrationService rser = new RegistrationService();
            string userId = HttpContext.Current.User.Identity.Name;
            isTempHead = rser.IsTempDepHead(userId);

            if (isTempHead == true)
            {
                link_Delg.Visible = false;
            }


            HttpCookie user = new HttpCookie("usercookie");
            user = Request.Cookies["usercookie"];
            if (user != null)
            {
                lbl_username.InnerText = user.Value;
            }
        }
    }
}