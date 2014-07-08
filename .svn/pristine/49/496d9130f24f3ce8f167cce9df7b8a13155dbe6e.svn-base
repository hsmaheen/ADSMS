using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using System.Web.Security;
using ADSMS.DataAccess;
namespace ADSMS.Presentation.Department
{
    public partial class RequestStationery : System.Web.UI.Page
    {
        Service_phyo requisition = new Service_phyo();
        List<object> itm = new List<object>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.IsInRole("Department Employee") != true)
            {
                Response.Redirect("/Presentation/Login.aspx");

            }

                if (!IsPostBack)
                {
                    //ddlSearch.DataTextField = "itemDescription";
                    //ddlSearch.DataValueField = "itemID";
                    //itm = requisition.getAllItem();
                    //ddlSearch.DataSource = itm;
                    //ddlSearch.DataBind();
                    //gvRequisition.DataSource = items;
                    //gvRequisition.DataBind();

                    binding();
                    if (items.Count > 0)
                    {
                        btnComfirm.Visible = true;
                    }
                    else
                    {
                        btnComfirm.Visible = false;
                    }
                }
            
           
        }

        public ItemCollection items
        {
            get
            {
                if (Session["cart"] == null)

                    Session["cart"] = new ItemCollection();
                return (ItemCollection)Session["cart"];
            }
            set
            {
                Session["cart"] = value;
            }
        }
        public void binding()
        {
            gvRequisition.DataSource = items;
            gvRequisition.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["zero"] != "zero" && Session["null"] != "notnull")
            {
                if (Session["nochangeReq"] != "0")
                {//if (Session["nochangeReq"] != "0" || Session["nochange"] == null)
                    MyItem item = new MyItem();
                    //item.ReqItemID = int.Parse(ddlSearch.SelectedValue);
                    //item.ItemDescription = ddlSearch.SelectedItem.Text;

                    if (txtAutoComplete.Text != "")
                    {
                        int itmid = requisition.getItemIDByItemDescription(txtAutoComplete.Text);
                        if (itmid != 0)
                        {
                            item.ReqItemID = itmid;
                            item.ItemDescription = txtAutoComplete.Text;

                            int qty = 1;
                            qty = (qty <= 0) ? 1 : qty;
                            item.ReqQuantityReq = qty;
                            items.AddItem(item, qty);
                            Session["cart"] = items;
                            gvRequisition.DataSource = items;
                            gvRequisition.DataBind();
                            if (items.Count > 0)
                            {
                                btnComfirm.Visible = true;
                            }
                            else
                            {
                                btnComfirm.Visible = false;
                            }
                        }
                        else
                        {
                            var script = "alert('Please choose item');";
                            ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                        }
                        txtAutoComplete.Text = "";
                    }
                }
                else
                {
                    binding();
                    Session["nochangeReq"] = null;
                }
                Session["zero"] = null;
                Session["null"] = null;
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "Not allow null and quantity zero!";
                var script = "alert('Not allow null and zero quantity');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }
        protected void btnRemove_Click(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            MyItem item = new MyItem();

            items.RemoveItem(id);
            items.Remove(item);

            gvRequisition.DataSource = items;
            gvRequisition.DataBind();
            if (items.Count > 0)
            {
                btnComfirm.Visible = true;
            }
            else
            {
                btnComfirm.Visible = false;
                lblMsg.Text = "";
            }
        }

        protected void btnComfirm_Click(object sender, EventArgs e)
        {
            if (Session["zero"] != "zero" && Session["null"] != "notnull")
            {
                int eid;
                int.TryParse(Session["userid"].ToString(), out eid);
                ItemCollection itm = new ItemCollection();
                itm = (ItemCollection)Session["cart"];
                bool flat = requisition.CreteRequisitionAll(eid, itm);
                if (flat == true)
                {
                    Session["cart"] = null;
                }
                Session["zero"] = null;
                Session["null"] = null;
                lblMsg.Text = "";
                Response.Redirect("RequisitionHistory_Emp.aspx");
            }
            else
            {
                lblMsg.Text = "Not allow null and quantity zero!";
                var script = "alert('Not allow null and zero quantity');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }

        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static List<string> GetCompletionList(string prefixText, int count)
        {

            using (var context = new stationeryEntities())
            {

                var subjects = from s in context.items
                               where s.ItemDescription.StartsWith(prefixText)
                               select s;
                List<String> cList = new List<String>();
                foreach (var subject in subjects)
                {
                    cList.Add(subject.ItemDescription);
                }
                return cList;
            }
        
        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            
            GridViewRow currentRow = (GridViewRow)((TextBox)sender).Parent.Parent;
            TextBox txt = (TextBox)sender;

            if (txt.Text != "" )
            {
                int qty = int.Parse(txt.Text);

                if (qty != 0)
                {

                    Label lblItemID = (Label)currentRow.FindControl("lblItemID");
                    int itmid = int.Parse(lblItemID.Text);

                    foreach (var item in items)
                    {
                        if (item.ReqItemID == itmid)
                        {
                            item.ReqQuantityReq = int.Parse(txt.Text);
                        } Session["cart"] = items;
                        Session["nochangeReq"] = "0";
                    }
                    lblMsg.Text = "";
                    Session["zero"] = null;
                    Session["null"] = null;
                }
                else
                {
                    lblMsg.Text = "Not allow Zero!";
                    Session["zero"] = "zero";
                    var script = "alert('Not allow zero quantity');";
                    ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                }
            }
            else
            {
                lblMsg.Text = "Not allow null!";
                Session["null"] = "notnull";
                //ClientScript.RegisterClientScriptBlock(GetType(), "showSaveMessage", "<script language="'JavaScript'"> alert('USER Deleted Sucessfully' ); </script>");
                var script = "alert('Not allow null');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }
    }
}