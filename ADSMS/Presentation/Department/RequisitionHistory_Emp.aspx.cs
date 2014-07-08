﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;

namespace ADSMS.Presentation.Department
{
    public partial class RequisitionHistory : System.Web.UI.Page
    {
        Service_phyo reqService = new Service_phyo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Department Employee") != true)
            {
                Response.Redirect("/Presentation/Login.aspx");

            }

            if (!IsPostBack)
            {
                Binding();
            }
        }
        public void Binding()
        {
            int eid;
            int.TryParse(Session["userid"].ToString(), out eid);
            List<object> obj = new List<object>();
            obj = reqService.getAllRequisitionByEid(eid);

            gvRequisition.DataSource = obj;
            gvRequisition.DataBind();
        }

        protected void btnDetail_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("RequistionDetails_Emp.aspx?requisitionId=" + id);
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            reqService.DeleteRequisitionAll(id);
            Binding();
        }

        protected void gvRequisition_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvRequisition.PageIndex = e.NewPageIndex;
            ddlSearchStatus();
        }

        protected void gvRequisition_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            for (int i = 0; i < gvRequisition.Rows.Count + 2; i++)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
                    LinkButton lbtnDelete = (LinkButton)e.Row.FindControl("btnDelete");
                    int cid = Convert.ToInt32(lbtnDelete.CommandArgument.ToString());
                    bool flat = reqService.getRequisitionByStatus(cid);//true is pending, false is approve

                        if (flat==true)
                        {
                            lbtnDelete.Visible = true;
                        }
                        else
                        {
                            lbtnDelete.Visible = false;
                        }
                }
            }
        }

        public void ddlSearchStatus()
        {
            String searchStatus = ddlRequisition.SelectedValue;
            if (ddlRequisition.SelectedValue == "all")
            {
                Binding();
            }
            else
            {
                int eid;
                int.TryParse(Session["userid"].ToString(), out eid);
                List<object> obj = new List<object>();

                obj = reqService.getAllRequisitionStatusByEid(eid, searchStatus);
                gvRequisition.DataSource = obj;
                gvRequisition.DataBind();
            }
        }

        protected void ddlRequisition_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSearchStatus();
        }
    }
}