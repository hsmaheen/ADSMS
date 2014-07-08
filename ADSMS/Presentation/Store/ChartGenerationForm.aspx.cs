﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADSMS.BizLogic;
using System.Web.Services;
using ADSMS.DataAccess;

namespace ADSMS.Presentation
{
    public partial class ChartGenerationForm : System.Web.UI.Page
    {
        ClerkService_Phyo service = new ClerkService_Phyo();
        List<item> listI = new List<item>();
        List<category> listC = new List<category>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((HttpContext.Current.User.IsInRole("Store Manager") || HttpContext.Current.User.IsInRole("Store Supervisor") || HttpContext.Current.User.IsInRole("Store Clerk")) != true)
            {

                Response.Redirect("/Presentation/Login.aspx");


            }

            if (!IsPostBack)
            {
                listC = service.getAllCategory();
                categorylist.DataValueField = "CategoryID";
                categorylist.DataTextField = "CategoryName";
                categorylist.DataSource = listC;
                categorylist.DataBind();

            }


        }

        protected void categorylist_SelectedIndexChanged(object sender, EventArgs e)
        {

            //int cid = int.Parse(categorylist.SelectedValue);
            //listI = service.getAllItemByCid(cid);
            //itemlist.DataValueField = "ItemID";
            //itemlist.DataTextField = "ItemDescription";
            //itemlist.DataSource = listI;
            //itemlist.DataBind();


        }

        [WebMethod]
        public static List<Object> getChart(int itemName, int catName, int depName, string fromdate, string todate)
        {

            stationeryEntities se = new stationeryEntities();
            int itemID = itemName;
            int catID = catName;
            int depID = depName;

            DateTime fromdates = new DateTime();


            List<Object> chart = new List<object>();
            DateTime todates = new DateTime();
            fromdates = Convert.ToDateTime(fromdate);
            todates = Convert.ToDateTime(todate);

            //get Chart by Category
            if ((itemID == 0) && (catID != 0) && (depID == 0))
            {
                chart = se.getChartbyCategoryandItem(fromdates, todates, catID).ToList<Object>();


            }

                //get chart by Department
            else if ((itemID == 0) && ((catID != 0) || (catID == 0)) && (depID != 0))
            {
                chart = se.getChartForDepByCategoryOnly(fromdates, todates, depID).ToList<object>();

            }
            return chart;



            //chart = se.getChartbyCategory(fromdate, todate).ToList<Object>();
            //return chart;


        }
        [WebMethod]
        public static List<CustomChart> getCustomChart(List<string> date)
        {
            stationeryEntities se = new stationeryEntities();
            List<string> Datesn = new List<string>();

            int index = Datesn.Count;
            int length = 0;
            List<CustomDepOrder> DepOrder = new List<CustomDepOrder>();
            List<CustomChart> finalChart = new List<CustomChart>();

            Datesn = date;
            foreach (string d in Datesn)
            {
                DateTime fromDate = new DateTime();
                DateTime toDate = new DateTime();
                List<Object> chart = new List<object>();
                fromDate = Convert.ToDateTime(d);
                toDate = fromDate.AddDays(30);
                DepOrder = se.getDepOrderByMonth1(fromDate,toDate).ToList<CustomDepOrder>();
                foreach (CustomDepOrder deporder in DepOrder)
                {
                    if (finalChart.Count == 0)
                    {
                        CustomChart newcc = new CustomChart();
                        newcc.depName = deporder.DepName;
                        newcc.Month1 = deporder.QuantDelivered ?? default(int);
                        finalChart.Add(newcc);

                    }
                    else
                    {
                        int notfound = 0;
                        length = finalChart.Count;
                        for (int i = 0; i < length; i++)
                        {
                            if (finalChart[i].depName == deporder.DepName)
                            {

                                if (finalChart[i].Month1 == 0)
                                {
                                    finalChart[i].Month1 = deporder.QuantDelivered ?? default(int);
                                }
                                else if (finalChart[i].Month2 == 0)
                                {
                                    finalChart[i].Month2 = deporder.QuantDelivered ?? default(int);
                                }
                                else if (finalChart[i].Month3 == 0)
                                {
                                    finalChart[i].Month3 = deporder.QuantDelivered ?? default(int);
                                }
                                notfound = 0;
                                break;


                            }
                            else
                            {
                                notfound = 1;

                            }



                        }

                        if (notfound != 0)
                        {
                            CustomChart newchart = new CustomChart();
                            newchart.depName = deporder.DepName;
                            newchart.Month1 = deporder.QuantDelivered ?? default(int);
                            finalChart.Add(newchart);
                        }


                        //foreach (CustomChart cusdep in finalChart)
                        //{
                        //    if (cusdep.depName == deporder.DepName)
                        //    {
                        //        if (cusdep.Month1 == 0)
                        //        {
                        //            cusdep.Month1 = deporder.QuantDelivered ?? default(int);
                        //        }
                        //        else if (cusdep.Month2 == 0)
                        //        {
                        //            cusdep.Month2 = deporder.QuantDelivered ?? default(int);
                        //        }
                        //        else if (cusdep.Month3 == 0)
                        //        {
                        //            cusdep.Month3 = deporder.QuantDelivered ?? default(int);
                        //        }

                        //    }
                        //    else
                        //    {
                        //        CustomChart newchart = new CustomChart();
                        //        newchart.depName = deporder.DepName;
                        //        newchart.Month1 = deporder.QuantDelivered ?? default(int);
                        //        finalChart.Add(newchart);



                        //    }

                        //}
                    }

                }















            }
            return finalChart;
        }
    }
}