﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;

namespace ADSMS.Presentation.Store
{
    public partial class PurchaseOrder : System.Web.UI.Page
    {
        ClerkService_Phyo service = new ClerkService_Phyo();
        List<category> listC = new List<category>();
        List<item> listI = new List<item>();
        List<supplier> listS = new List<supplier>();
        DataTable dt = new DataTable();
        purchaseorder po = new purchaseorder();
        purchaseorderdetail poDetail = new purchaseorderdetail();

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }


            if (!IsPostBack)
            {
                listC = service.getAllCategory();
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = listC;
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("- Select -", ""));

                dt.Columns.Add("CategoryID", typeof(int));
                dt.Columns.Add("CategoryName", typeof(string));
                dt.Columns.Add("ItemID", typeof(int));
                dt.Columns.Add("ItemName", typeof(string));
                dt.Columns.Add("SupplierID", typeof(int));
                dt.Columns.Add("SupplierName", typeof(string));
                dt.Columns.Add("Qty", typeof(int));
                dt.Columns.Add("Price", typeof(double));

                Session["pcart"] = dt;
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cid = int.Parse(ddlCategory.SelectedValue);
            listI = service.getAllItemByCid(cid);
            if (listI.Count > 0)
            {
                ddlItem.DataValueField = "ItemID";
                ddlItem.DataTextField = "ItemDescription";
                ddlItem.DataSource = listI;
                ddlItem.DataBind();
                ddlItem.Items.Insert(0, new ListItem("- Select -", ""));
            }
            else
            {
                ddlItem.Items.Clear();
                ddlItem.Items.Insert(0, new ListItem("- Select -", ""));
            }
            ddlSupplier.Items.Clear();
            ddlSupplier.Items.Insert(0, new ListItem("- Select -", ""));
        }

        protected void ddlItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            int itmid = int.Parse(ddlItem.SelectedValue);
            listS = service.getAllSupplierByItmid(itmid);
            if (listS.Count > 0)
            {
                ddlSupplier.DataValueField = "SupplierID";
                ddlSupplier.DataTextField = "SupplierName";
                ddlSupplier.DataSource = listS;
                ddlSupplier.DataBind();
                ddlSupplier.Items.Insert(0, new ListItem("- Select -", ""));
            }
            else
            {
                ddlSupplier.Items.Clear();
                ddlSupplier.Items.Insert(0, new ListItem("- Select -", ""));
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["notallow"] != "notallow")
            {

                if (Session["nochange"] != "0")
                {//if (Session["nochange"] != "0" || Session["nochange"] == null)
                    int sid = int.Parse(ddlSupplier.SelectedValue);
                    int itmid = int.Parse(ddlItem.SelectedValue);

                    if (sid != 0 && itmid != 0 && txtQty.Text != "" && txtQty.Text != "0")
                    {

                        double price = service.getPriceBySidItmid(sid, itmid);


                        if (Session["pcart"] != null)
                        {
                            dt = (DataTable)Session["pcart"];
                            if (dt.Rows.Count > 0)
                            {
                                for (int i = 0; i < dt.Rows.Count; i++)
                                {
                                    string cname = dt.Rows[i]["CategoryName"].ToString();
                                    string iname = dt.Rows[i]["ItemName"].ToString();
                                    string sname = dt.Rows[i]["SupplierName"].ToString();
                                    int iqty = int.Parse(dt.Rows[i]["Qty"].ToString());

                                    string ddlcname = ddlCategory.SelectedItem.Text;
                                    string ddliname = ddlItem.SelectedItem.Text;
                                    string ddlsname = ddlSupplier.SelectedItem.Text;
                                    int tqty = int.Parse(txtQty.Text);

                                    if (cname == ddlcname && iname == ddliname && sname == ddlsname)
                                    {
                                        double totalQty = iqty + tqty;
                                        double totalprice = totalQty * price;
                                        dt.Rows[i]["Qty"] = totalQty;
                                        dt.Rows[i]["Price"] = totalprice;
                                        Session["pcart"] = dt;
                                        break;
                                    }
                                    else
                                    {

                                        int qty = int.Parse(txtQty.Text);

                                        DataRow dr = dt.NewRow();
                                        dr["CategoryID"] = int.Parse(ddlCategory.SelectedValue);
                                        dr["CategoryName"] = ddlCategory.SelectedItem.Text;
                                        dr["ItemID"] = itmid;
                                        dr["ItemName"] = ddlItem.SelectedItem.Text;
                                        dr["SupplierID"] = sid;
                                        dr["SupplierName"] = ddlSupplier.SelectedItem.Text;
                                        dr["Qty"] = qty;

                                        double total = price * qty;
                                        dr["Price"] = total;

                                        dt.Rows.Add(dr);

                                        Session["pcart"] = dt;
                                        break;
                                    }
                                }
                            }
                            else
                            {
                                int qty = int.Parse(txtQty.Text);

                                DataRow dr = dt.NewRow();
                                dr["CategoryID"] = int.Parse(ddlCategory.SelectedValue);
                                dr["CategoryName"] = ddlCategory.SelectedItem.Text;
                                dr["ItemID"] = itmid;
                                dr["ItemName"] = ddlItem.SelectedItem.Text;
                                dr["SupplierID"] = sid;
                                dr["SupplierName"] = ddlSupplier.SelectedItem.Text;
                                dr["Qty"] = qty;

                                double total = price * qty;
                                dr["Price"] = total;

                                dt.Rows.Add(dr);

                                Session["pcart"] = dt;
                            }
                        }
                        binding();

                        ddlCategory.SelectedIndex = 0;
                        ddlItem.Items.Clear();
                        ddlItem.Items.Insert(0, new ListItem("- Select -", ""));
                        ddlSupplier.Items.Clear();
                        ddlSupplier.Items.Insert(0, new ListItem("- Select -", ""));
                        txtQty.Text = "";
                    }
                    else
                    {
                        var script = "alert('Please choose a Delivery Date');";
                        ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                    }

                }
                else
                {
                    binding();
                    Session["nochange"] = null;
                }

                dt = (DataTable)Session["pcart"];
                if (dt.Rows.Count > 0)
                {
                    lblDate.Visible = true;
                    fromDateTextBox.Visible = true;
                    imgbtnCalendar.Visible = true;
                    btnComfirm.Visible = true;
                    lblDAddress.Visible = true;
                    txtDAddress.Visible = true;
                }
                else
                {
                    lblDate.Visible = false;
                    fromDateTextBox.Visible = false;
                    imgbtnCalendar.Visible = false;
                    btnComfirm.Visible = false;
                    lblDAddress.Visible = false;
                    txtDAddress.Visible = false;
                }
            }
            else
            {
                var script = "alert('Not allow null and zero quantity');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }
        public void binding()
        {
            gvPurchase.DataSource = dt;
            gvPurchase.DataBind();
            if (dt.Rows.Count > 0)
            {
                lblDate.Visible = true;
                fromDateTextBox.Visible = true;
                imgbtnCalendar.Visible = true;
                btnComfirm.Visible = true;
                lblDAddress.Visible = true;
                txtDAddress.Visible = true;
            }
            else
            {
                lblDate.Visible = false;
                fromDateTextBox.Visible = false;
                imgbtnCalendar.Visible = false;
                btnComfirm.Visible = false;
                lblDAddress.Visible = false;
                txtDAddress.Visible = false;
            }
        }

        protected void lbtnDelete_Command(object sender, CommandEventArgs e)
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string ccname = commandArgs[0];
            string ciname = commandArgs[1];
            string csname = commandArgs[2];
            string cqty = commandArgs[3];


            dt = (DataTable)Session["pcart"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string cname = dt.Rows[i]["CategoryName"].ToString();
                string iname = dt.Rows[i]["ItemName"].ToString();
                string sname = dt.Rows[i]["SupplierName"].ToString();
                string qqty = dt.Rows[i]["Qty"].ToString();

                if (cname == ccname && iname == ciname && sname == csname && cqty == qqty)
                {
                    dt.Rows[i].Delete();
                }
            }
            binding();
        }

        protected void btnComfirm_Click(object sender, EventArgs e)
        {
            if (Session["notallow"] != "notallow" && fromDateTextBox.Text!="")
            {
                int eid;
                int.TryParse(Session["userid"].ToString(), out eid);
                int ssid = 0;
                int poid = 0;
                dt = (DataTable)Session["pcart"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        int sid = int.Parse(dt.Rows[i]["SupplierID"].ToString());
                        //int poid=service.getPOIDBySid(sid);
                        if (ssid == 0 || ssid != sid)
                        {
                            po.POEmpID = eid;
                            po.POReqDate = DateTime.Now;
                            po.PODeliverAddress = txtDAddress.Text;
                            po.POReqDeliverDate = DateTime.Parse(fromDateTextBox.Text);
                            po.POSuppID = sid;

                            poid = service.createPurchaseOrder(po);
                            ssid = service.getSIDByPoid(poid);

                            poDetail.POID = poid;
                            poDetail.POItemID = int.Parse(dt.Rows[i]["ItemID"].ToString());
                            poDetail.POItemQuant = int.Parse(dt.Rows[i]["Qty"].ToString());
                            poDetail.POStatus = "pending";
                            service.createPurchaseOrderDetails(poDetail);
                            service.sendEmailToSupplier(eid, poid);
                        }
                        else
                        {
                            poDetail.POID = poid;
                            poDetail.POItemID = int.Parse(dt.Rows[i]["ItemID"].ToString());
                            poDetail.POItemQuant = int.Parse(dt.Rows[i]["Qty"].ToString());
                            poDetail.POStatus = "pending";
                            service.createPurchaseOrderDetails(poDetail);
                            service.sendEmailToSupplier(eid, poid);
                        }
                    }
                }
                

                Session["pcart"] = null;
                Session["notallow"] = null;
                Response.Redirect("PurchaseOrderHistory.aspx");
            }
            else
            {
                var script = "alert('Need to choose Deliver Date, Not allow null and zero quantity');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }


        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            GridViewRow currentRow = (GridViewRow)((TextBox)sender).Parent.Parent;
            TextBox txt = (TextBox)sender;
            if (txt.Text != "")
            {
                int qty = int.Parse(txt.Text);

                if (qty != 0)
                {

                    Label lblCName = (Label)currentRow.FindControl("lblCName");
                    Label lblIName = (Label)currentRow.FindControl("lblIName");
                    Label lblSName = (Label)currentRow.FindControl("lblSName");

                    dt = (DataTable)Session["pcart"];
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string cname = dt.Rows[i]["CategoryName"].ToString();
                        string iname = dt.Rows[i]["ItemName"].ToString();
                        string sname = dt.Rows[i]["SupplierName"].ToString();
                        int qqty = int.Parse(dt.Rows[i]["Qty"].ToString());

                        if (cname == lblCName.Text && iname == lblIName.Text && sname == lblSName.Text)
                        {
                            int sid = int.Parse(dt.Rows[i]["SupplierID"].ToString());
                            int itmid = int.Parse(dt.Rows[i]["ItemID"].ToString());

                            double price = service.getPriceBySidItmid(sid, itmid);

                            double total = qty * price;
                            dt.Rows[i]["Qty"] = qty;
                            dt.Rows[i]["Price"] = total;

                            Session["pcart"] = dt;
                            break;
                        }
                    }
                    Session["nochange"] = "0";
                    Session["notallow"] = null;
                }
                else
                {
                    if (Session["notallow"] != "notallow" && Session["notallow"] == null)
                    {
                        Session["notallow"] = "notallow";
                        var script = "alert('Not allow null and zero');";
                        ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                    }
                    else
                    {
                        var script = "alert('Not allow null and zero');";
                        ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                    }
                    
                }
            }
            else
            {
                if (Session["notallow"] != "notallow" && Session["notallow"] == null)
                {
                    Session["notallow"] = "notallow";
                    var script = "alert('Not allow null and zero');";
                    ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                }
                else
                {
                    var script = "alert('Not allow null and zero');";
                    ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                }
            }
        }

        protected void gvPurchase_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPurchase.PageIndex = e.NewPageIndex;
            DataTable dt = new DataTable();
            dt = (DataTable)Session["pcart"];
            gvPurchase.DataSource = dt;
            gvPurchase.DataBind();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            fromDateTextBox.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }
            protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < (System.DateTime.Now.AddDays(-1)))//.AddDays(_nDaysToBlock)))
            {
                e.Day.IsSelectable = false;
                e.Cell.Font.Strikeout = true;
            }
        }
    }
}