using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;

namespace ADSMS.Presentation.Store
{
    public partial class PurchaseOrderDetails : System.Web.UI.Page
    {
        ClerkService_Phyo service = new ClerkService_Phyo();
        purchaseorder po = new purchaseorder();
        List<object> obj = new List<object>();
        List<purchaseorderdetail> detail = new List<purchaseorderdetail>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }


            if (!IsPostBack)
            {
                int p;
                int.TryParse(Request.QueryString["POID"],out p);
                po = service.getPurchaseOrderByPOID(p);
                
                lblsname.Text=po.supplier.SupplierName;
                lblrename.Text=po.storeemp.StoreEmpName;
                lblRDate.Text=po.POReqDate.ToShortDateString();

                if (po.PODeliverAddress == null)
                {
                    lbladdress.Text = "Still Pending...";
                }
                else
                {
                    lbladdress.Text = po.PODeliverAddress;
                }

                if (po.POReqDeliverDate == null)
                {
                    lblrddate.Text = "Still Pending...";
                }
                else
                {
                    lblrddate.Text = po.POReqDeliverDate.ToShortDateString();
                }

                
                if (po.PORecieveDate == null)
                {
                    lblrecdate.Text = "Still Pending...";
                    //btnConfirm.Visible = true;
                }
                else
                {
                    lblrecdate.Text = po.PORecieveDate.ToString();
                    //btnConfirm.Visible = false;
                }
                binding();

                if (po.PORecieveDate == null)
                {
                    btnConfirm.Visible = true;
                }
                else
                {
                    btnConfirm.Visible = false;
                }


                //detail = service.getAllPurchaseOrderDetailStatusByPOID(p);
                //foreach (purchaseorderdetail dd in detail)
                //{
                    
                    //if (dd.POStatus == "pending")
                    //{
                    //    btnConfirm.Visible = true;
                    //}
                    //else
                    //{
                    //    btnConfirm.Visible = false;
                    //}
                //}
            }
        }
        public void binding()
        {
            int p;
            int.TryParse(Request.QueryString["POID"], out p);
            obj=service.getAllPurchaseOrderDetailByPOID(p);
            
            gvPO.DataSource = obj;
            gvPO.DataBind();
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int p;
            int.TryParse(Request.QueryString["POID"], out p);
            bool flat=service.UpdatePurchaseOrderDetailStatusApprove(p);
            if (flat == true)
            {
                var script = "alert('Successful...');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
                Response.Redirect("PurchaseOrderHistory.aspx");
            }
            else
            {
                var script = "alert('Not Successful...');";
                ClientScript.RegisterStartupScript(this.GetType(), "sample", script.ToString(), true);
            }
        }

        protected void gvPO_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPO.PageIndex = e.NewPageIndex;
            binding();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("PurchaseOrderHistory.aspx");
        }
    }
}