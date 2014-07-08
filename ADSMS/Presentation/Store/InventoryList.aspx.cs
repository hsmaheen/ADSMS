using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;


namespace ADSMS.Presentation.Store
{
    public partial class InventoryList : System.Web.UI.Page
    {
        StoreService ss = new StoreService();
        private void BindGrid()
        {
           
            itemView.DataSource = ss.getItemList();
            itemView.DataBind();

        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }

            if (!IsPostBack)
            {

                BindGrid();
            }

        }

        protected void itemView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
           itemView.PageIndex = e.NewPageIndex;
           if (txtSearch.Text == "")
           {

               BindGrid();
           }
           else
           {
               SearchByItem(txtSearch.Text);
           }

        }


        public void SearchByItem(string itemdesp)
        {
            itemView.DataSource = ss.searchItem(itemdesp);
            itemView.DataBind();
        }


        protected void itemView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            itemView.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void itemView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            itemView.EditIndex = -1;
            BindGrid();
        }

        protected void itemView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            bool ans = false;



            //int itemID = Int32.Parse(itemView.DataKeys[e.RowIndex].Value.ToString());
            
            //GridViewRow row = itemView.Rows[e.RowIndex];
            string itemID = itemView.Rows[e.RowIndex].Cells[0].Text;
            //string test = ((TextBox)(itemView.Rows[e.RowIndex].Controls[2])).Text
            //string i_itemid = itemView.Rows[e.RowIndex].Cells[3].ToString();
            //TextBox lblID = itemView.Rows[e.RowIndex].FindControl("lblID") as TextBox;
            TextBox lblDesp = itemView.Rows[e.RowIndex].FindControl("lblDesp") as TextBox;
            TextBox lblReO = itemView.Rows[e.RowIndex].FindControl("lblReO") as TextBox;
            TextBox lblReoQ = itemView.Rows[e.RowIndex].FindControl("lblReoQ") as TextBox;
            TextBox lblUOM = itemView.Rows[e.RowIndex].FindControl("lblUOM") as TextBox;
            TextBox lblBinNo = itemView.Rows[e.RowIndex].FindControl("lblBinNo") as TextBox;


            ans = ss.UpdateInventoryList(Convert.ToInt32(itemID),lblDesp.Text, Convert.ToInt32(lblReO.Text), Convert.ToInt32(lblReoQ.Text), lblUOM.Text, lblBinNo.Text);
            if (ans == true)
            {


                //lbl_status.Text = "Updated";
                //Response.Write("Update!!!!!!!!!");
         
                itemView.EditIndex = -1;
                BindGrid();

            }
            else
            {
                Response.Write("Update failed");

            }


        }


        protected void itemView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            itemView.DataSource = ss.searchItem(txtSearch.Text);
            itemView.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            itemView.DataSource = ss.listbyCN(listbyCN.SelectedValue);
            itemView.DataBind();
        }

        

        //protected void itemView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    bool ans = false;
        //    object delitem = new object();
        //    string item = itemView.Rows[e.RowIndex].Cells[1].Text;
        //    delitem=ss.getItem(item);
 
        //    ans=ss.deleteItem(delitem);
        //    if (ans ==true)
        //    {
        //        BindGrid();
        //    }
        //    else

        //    {
        //        lbl_status.Text = "Item could not be deleted";
 
        //    }
        //}
    }
}