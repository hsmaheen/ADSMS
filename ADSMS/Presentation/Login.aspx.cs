﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using ADSMS.BizLogic;

namespace ADSMS.Presentation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            statusdiv.Visible = false;
            //if (IsPostBack)
            //{
            //    statusdiv.Visible = true;
            //    lbl_status.InnerText = "You DO NOT have authorization to access the page please try with different credentials";
            //}


        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            RegistrationService rservice = new RegistrationService();
            string username = txt_Username.Text;
            string password = txt_Password.Text;
            string storeclerk = "Store Clerk";
            string storemanager = "Store Manager";
            string storesupervisor = "Store Supervisor";
            string dephead = "Department Head";
            string depemployee = "Department Employee";
            string[] roles;
            HttpCookie usercookie = new HttpCookie("usercookie");
            if (Membership.ValidateUser(username, password))
            {


                FormsAuthentication.SetAuthCookie(txt_Username.Text, false);
                bool ans;

                //ans=User.IsInRole(storeclerk);

                ans = Roles.IsUserInRole(storeclerk);

                roles = Roles.GetRolesForUser(txt_Username.Text);
                string role = roles[0];

                if (role == dephead)
                {
                    usercookie.Value = rservice.getusernameofemp(username);
                    Response.Cookies.Add(usercookie);
                    Session["userid"] = rservice.getUserIDofemp(username);
                    Response.Redirect("/Presentation/Department/RequisitionList_haead.aspx");



                }
                else if (role == depemployee)
                {
                    bool ans1 = false;
                    bool ans2 = false;
                    usercookie.Value = rservice.getusernameofemp(username);
                    Response.Cookies.Add(usercookie);
                    Session["userid"] = rservice.getUserIDofemp(username);
                    ans1 = rservice.IsDepRep(username);
                    ans2 = rservice.IsTempDepHead(username);
                    if ((ans1 == false) && (ans2 == false))
                    {
                        Response.Redirect("/Presentation/Department/RequestStationery_Emp.aspx");
                    }
                    else if (ans2 == true)
                    {
                        Response.Redirect("/Presentation/Department/RequisitionList_haead.aspx");

                    }
                    else
                    {
                        Response.Redirect("/Presentation/Department/RequestStationery_DepRep.aspx");

                    }

                }

                else if (role == storeclerk)
                {
                    usercookie.Value = rservice.getusernameofStoreEmp(username);
                    Response.Cookies.Add(usercookie);
                    Session["userid"] = rservice.getUserIDofStoreEmp(username);
                    Response.Redirect("/Presentation/Store/StationeryRetrieveal_Emp.aspx");

                }
                else if (role == storesupervisor)
                {
                    usercookie.Value = rservice.getusernameofStoreEmp(username);
                    Response.Cookies.Add(usercookie);
                    Session["userid"] = rservice.getUserIDofStoreEmp(username);
                    Response.Redirect("/Presentation/Store/ViewAdjustmentVoucherListBySupervisor.aspx");


                }
                else if (role == storemanager)
                {
                    usercookie.Value = rservice.getusernameofStoreEmp(username);
                    Response.Cookies.Add(usercookie);
                    Session["userid"] = rservice.getUserIDofStoreEmp(username);
                    Response.Redirect("/Presentation/Store/ViewAdjustmentVoucherListBySupervisor.aspx");

                }
            }
            else
            {
                statusdiv.Visible = true;
                lbl_status.InnerText = "Username or Password is incorrect, please try again";

            }




        }

    }
}