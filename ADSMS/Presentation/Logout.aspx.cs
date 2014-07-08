﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ADSMS.Presentation
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            FormsAuthentication.SignOut();
            HttpContext.Current.Session.Abandon();
            HttpCookie user = new HttpCookie("usercookie");
            user = Request.Cookies["usercookie"];
            user.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(user);

            Session.Clear();

            Response.Redirect("/Presentation/Login.aspx");            

        }
    }
}