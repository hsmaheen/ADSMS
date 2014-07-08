﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.DataAccess;
using ADSMS.BizLogic;


namespace ADSMS.Presentation.Store
{
    public partial class PurchaseOrderHistory : System.Web.UI.Page
    {
        ClerkService_Phyo service = new ClerkService_Phyo();
        List<object> listp = new List<object>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }

            if (!IsPostBack)
            {
                binding();
            }
        }

        public void binding()
        {
            listp=service.getAllPurchase();
            GridView1.DataSource = listp;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ddlSearchStatus();
        }

        protected void ddlSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSearchStatus();
        }
        public void ddlSearchStatus()
        {
            String searchStatus = ddlSearch.SelectedValue;
            if (ddlSearch.SelectedValue == "all")
            {
                binding();
            }
            else
            {
                listp = service.getAllPurchaseStatus(searchStatus);
                GridView1.DataSource = listp;
                GridView1.DataBind();
            }
        }
    }
}