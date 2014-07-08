﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;

namespace ADSMS.Presentation.Store
{
    public partial class DisbursementHistory_Details : System.Web.UI.Page
    {
        DisbursementServie ds = new DisbursementServie();

        public void BindGrid()
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }




            if (Request.QueryString["disbID"] != null)
            {
                string disb_id = Request.QueryString["disbID"];


                dgvDisbDetail.DataSource = ds.getDisbHDetail(Convert.ToInt32(disb_id));
                dgvDisbDetail.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindGrid();
            }
        }
    }
}