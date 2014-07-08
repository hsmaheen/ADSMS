using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using ADSMS.DataAccess;
using System.Web.Services;

namespace ADSMS.Presentation.Store
{
    public partial class StationeryRetrieveal_Emp : System.Web.UI.Page
    {
        DepartmentService dser = new DepartmentService();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            nodata.Visible = false;
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }

            if (!IsPostBack)
            {
                Bindgrind();
            }
        }
        public void Bindgrind()
        {
            List<object> requests = new List<object>();
            requests = dser.getRequests();
            if (requests.Count == 0)
            {
                nodata.Visible = true;
 
            }
            if (gdv_StatList != null)
            {
                gdv_StatList.DataSource = requests;

            }
            gdv_StatList.DataBind();

 
        }
        
        [WebMethod]
        public static List<Object> GetDepItem(string id = "")
        {
            DepartmentService s = new DepartmentService();
            string itemid = id;
            List<object> itemlist = new List<object>();
            itemlist = s.getItemByDep(id);


            return itemlist;
        }

        [WebMethod(EnableSession=true)]
        public static bool SaveDisbursement(List<int> quant, List<int> dep, int itemID, List<int> quantreq)
        {
            DepartmentService sdepser = new DepartmentService();
            //int count;
            int totcount;
            totcount = dep.Count();
            bool ans = true;
            int userid= Convert.ToInt32(HttpContext.Current.Session["userid"].ToString());

            
            Disbursement_M disb=new Disbursement_M();
            for (int i = 0; i < totcount; i++)
            {
                disb.ItemID = itemID;
                disb.DepID = dep[i];
                disb.RequiredQuant = quantreq[i];
                disb.QuantinHand = quant[i];
                sdepser.savedisb(disb,userid);
                
            }

            return ans;

 
        }

       
    }
}