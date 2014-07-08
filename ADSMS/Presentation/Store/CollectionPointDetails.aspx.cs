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
    public partial class CollectionPointDetails : System.Web.UI.Page
    {
        ClerkService_Phyo service = new ClerkService_Phyo();
        List<collectionPoint> cplist = new List<collectionPoint>();
        collectionPoint cp = new collectionPoint();

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
            cplist = service.getAllCollectionPoint();
            gvCollectionPoint.DataSource = cplist;
            gvCollectionPoint.DataBind();
        }

        protected void gvCollectionPoint_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCollectionPoint.EditIndex = e.NewEditIndex;
            binding();

            Calendar Calendar1 = gvCollectionPoint.Rows[e.NewEditIndex].FindControl("Calendar1") as Calendar;
            Calendar1.DayRender += new DayRenderEventHandler(c_DayRender);

        }

        protected void gvCollectionPoint_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int cpid = int.Parse(gvCollectionPoint.Rows[e.RowIndex].Cells[1].Text);
            Calendar Calendar1 = gvCollectionPoint.Rows[e.RowIndex].FindControl("Calendar1") as Calendar;
            string date = Calendar1.SelectedDate.ToShortDateString();

            bool flat = service.updateCollectionDateByCPID(cpid, date);
            if (flat == true)//successful
            {
                gvCollectionPoint.EditIndex = -1;
                binding();
                var script = "alert('Successful...');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
            else
            {//false
                var script = "alert('Not Successful...');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }

        protected void gvCollectionPoint_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCollectionPoint.EditIndex = -1;
            binding();
        }

        void c_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < (System.DateTime.Now.AddDays(-1)))//.AddDays(_nDaysToBlock)))
            {
                e.Day.IsSelectable = false;
                e.Cell.Font.Strikeout = true;
            }
        }
    }
}