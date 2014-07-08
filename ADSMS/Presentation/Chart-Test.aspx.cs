using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using ADSMS.DataAccess;
using System.Data;
using System.ComponentModel;
using System.Reflection;


namespace ADSMS.Presentation
{
    public partial class Chart_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<Object> getChartData()
        {
            CollectionHelper cph = new CollectionHelper();
            stationeryEntities db = new stationeryEntities();
            List<Object> chartdata = new List<object>();
            DataTable charttable = new DataTable();
            List<ChartData> finalchart = new List<ChartData>();
            var q = from dep in db.departments
                    from disb in db.disbursements
                    from dd in db.disbursementdetails
                    from i in db.items
                    where
                      i.ItemID == dd.DisbItemID &&
                      disb.DisbID == dd.DisbID &&
                      dep.DepID == disb.DisbDepID
                    group new { i, dd } by new
                    {
                        i.ItemDescription,
                        dd.DisbItemQuantDelivered
                    } into g
                    orderby
                      g.Sum(p => p.dd.DisbItemQuantReq)
                    select new
                    {
                        g.Key.ItemDescription,
                        Qunatity_Delivered = (System.Int32?)g.Sum(p => p.dd.DisbItemQuantReq)
                    };
            chartdata = q.ToList<Object>();
            return chartdata;
        }
    }
}
       
