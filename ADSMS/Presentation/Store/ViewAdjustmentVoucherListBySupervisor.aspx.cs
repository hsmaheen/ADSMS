﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
namespace ADSMS.Presentation.Store
{
    public partial class ViewAdjustmentVoucherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor")) != true)
            {
                Response.Redirect("/Presentation/Login.aspx");

            }


            if (!IsPostBack)
            {
                acceptAdjustmentVoucherList();
            }
        }
        void acceptAdjustmentVoucherList()
        {
            AdjustmentService adjService = new AdjustmentService();
            dgvStockAdjustmentList.DataSource = adjService.getAllAdjustmentVoucher();
            dgvStockAdjustmentList.DataBind();
        }
    }
}