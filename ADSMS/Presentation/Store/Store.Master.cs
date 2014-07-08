using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Security;
using ADSMS.DataAccess;
using ADSMS.BizLogic;
namespace ADSMS.Presentation.Store
{
    public partial class Store : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
            avList_Head.Visible = false;
            av_EMP.Visible = false;
            avList_Emp.Visible = false;
            stationeryEntities se=new stationeryEntities();
            storeemp semp = new storeemp();

            int userid = Convert.ToInt32(Session["userid"]);

            var q = from ste in se.storeemps
                    where ste.StoreEmpID == userid
                    select ste;
            semp = q.FirstOrDefault();
            if ((semp.role.RoleName == "Store Manager") || (semp.role.RoleName == "Store Supervisor"))
            {
                avList_Head.Visible = true;
            }
            else if (semp.role.RoleName == "Store Clerk")
            {
                av_EMP.Visible = true;
                avList_Emp.Visible = true;

 
            }


            HttpCookie user = new HttpCookie("usercookie");
            user = Request.Cookies["usercookie"];
            if (user != null)
            {
                lbl_username.InnerText = user.Value;
            }


        }
        


        //protected void btn_Logout_Click(object sender, EventArgs e)
        //{
        //    FormsAuthentication.SignOut();
        //    Response.Redirect("/Presentation/Login.aspx");
         
        //}

        //protected void btn_Logout_Click1(object sender, EventArgs e)
        //{

        //    FormsAuthentication.SignOut();
        //    Response.Redirect("/Presentation/Login.aspx");

        //}
    }
}