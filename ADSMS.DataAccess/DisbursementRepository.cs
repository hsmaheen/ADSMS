﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class DisbursementRepository
    {
        stationeryEntities se;
         
        

        public DisbursementRepository()
        { 
            se = new stationeryEntities();
        }

        public List<object> getDisbHistory()
        {
            List<object> disbHistory = new List<object>();

            var q = from disb in se.disbursements
                    join dept in se.departments on disb.DisbDepID equals dept.DepID
                    orderby disb.DisbCreateDate descending
                    select new { disb.DisbID, dept.DepName, disb.DisbStatus, disb.DisbReceiveDate, disb.DisbCreateDate };

            disbHistory = q.ToList<object>();

            return disbHistory;
        }

        public List<object> getDisbHisDetail(int disbID)
        {
            List<object> disHisDetail = new List<object>();

            var q = from disbD in se.disbursementdetails
                    join it in se.items on disbD.DisbItemID equals it.ItemID
                    where disbD.DisbID==disbID
                    select new { disbD.DisbID, it.ItemDescription, disbD.DisbItemQuantReq, disbD.DisbItemQuantDelivered };
            disHisDetail = q.ToList<object>();

            return disHisDetail;
        }
        //by seint san thandar bo
        public List<object> getItemsByDepartment(int depID)
        {
            List<object> disb = new List<object>();

            var query = from disbD in se.disbursementdetails
                        join disH in se.disbursements on disbD.DisbID equals disH.DisbID
                        where (disH.DisbStatus == "Ready" && disH.DisbReceiveDate == null && disH.DisbDepID ==  depID)
                        group disbD by new { disbD.DisbItemID, disbD.item.ItemDescription, disH.DisbDepID ,disH.department.DepName} into c
                        select new
                        {
                            ItemID = c.Key.DisbItemID,
                            ItemDescription = c.Key.ItemDescription,
                            Quantity = c.Sum(g => g.DisbItemQuantDelivered).ToString(),
                            Department = c.Key.DepName
                        };
            return query.ToList<object>();
        }

        public List<object> getDepartmentListToDeliver()
        {
            List<object> disbd = new List<object>();

            var query = from disH in se.disbursements
                        where (disH.DisbStatus == "Ready" && disH.DisbReceiveDate == null)
                        group disH by new{disH.DisbDepID ,disH.department.DepName} into c

                        select new 
                        {
                            c.Key.DisbDepID,
                            c.Key.DepName
                        };
            return query.ToList<object>();
        }

        //seint San Thandar Bo
        public List<collectionPoint> selectAllCollectionPoint()
        {
            List<collectionPoint> collectionpoint = new List<collectionPoint>();

            var query = from col in se.collectionPoints
                        select col;
            return query.ToList<collectionPoint>();
        }
        //public bool saveDisblist(Disbursement_M disbl)
        //{
        //    bool ans = false;
        //    List<requisitiondetail> rdlist = new List<requisitiondetail>();
        //    //requisitiondetail rd =new requisitiondetail();
        //    disbursementdetail disbdet = new disbursementdetail();
        //    disbursement disb = new disbursement();

          
        //        //creating a disbursement
        //        disbursement disb1 = new disbursement();
        //        disb1.DisbDepID = disbl.DepID;
        //        disb1.DisbStatus = "Pending";
        //        disb1.DisbReceiveDate = null;
        //        se.disbursements.Add(disb1);
        //        se.SaveChanges();
                
        //        //creating a Disbursement details

        //        disbdet.DisbID = disb1.DisbID;
        //        disbdet.DisbItemID = disbl.ItemID;
        //        disbdet.DisbItemQuantDelivered = disbl.ReqQuant;
        //        disbdet.DisbItemQuantReq = disbl.RequiredQuant;
        //        se.disbursementdetails.Add(disbdet);
        //        se.SaveChanges();
        //        ans = true;


        //        //changing the status to confirmed
        //        var m = from r in se.requisitiondetails
        //                where r.ReqItemID == disbl.ItemID &&
        //                r.requisition.ReqDepID == disbl.DepID
        //                select r;
        //        rdlist = m.ToList();

        //        foreach (requisitiondetail rd in rdlist)
        //        {
        //            rd.ReqStatus = "confirmed";
        //            se.SaveChanges();

        //        }


        //    //Update ItemTable
        //        var item = from i in se.items
        //                   where i.ItemID == disbl.ItemID
        //                   select i;

        //        List<item> itemlist = item.ToList();
            
        //        int updatedQuant =0;
        //        foreach (item i_tem in itemlist)
        //        {
        //            updatedQuant =i_tem.ItemQuant ?? default(int) -disbl.RequiredQuant;
        //            i_tem.ItemQuant =updatedQuant;
        //            se.SaveChanges();
        //        }
        //        ans = true;

        //        //Save In transaction
        //        transaction t = new transaction();
        //        t.TransDate = DateTime.Today;
        //        t.TransItemID = disbl.ItemID;
        //        t.TransItemQuant = Convert.ToString(disbl.RequiredQuant);
        //        t.TransItemBalance = updatedQuant;
        //        t.TransReason =  "Retrived For Department " +disbl.DepID;
        //        se.transactions.Add(t);
        //        se.SaveChanges();

        //        //For AdjustmentTransaction
        //        if (disbl.ReqQuant != disbl.RequiredQuant && disbl.ItemBalance > disbl.ReqQuant)
        //        {
        //            int adjustmentamount = disbl.ItemBalance = disbl.RequiredQuant;

        //            transaction t2 = new transaction();
        //            t2.TransDate = DateTime.Today;
        //            t2.TransItemID = disbl.ItemID;
        //            t2.TransItemQuant = Convert.ToString(adjustmentamount);
        //            t2.TransItemBalance = updatedQuant;
        //            t2.TransReason = "Retrived For Department " + disbl.DepID;
        //            t2.TransCode = "ADJ";
        //            t2.TransactionType = "in";
        //            t2.TranUserID = disbl.UpdatedUserID;
        //            se.transactions.Add(t2);
        //            se.SaveChanges();
        //        }

        //    //CheckReorderLevel
        //        var reordercheck = from reorderItem in se.items
        //                           where reorderItem.ItemID == disbl.ItemID
        //                           select reorderItem;
        //        item reorder_item = reordercheck.FirstOrDefault();

        //        if (reorder_item.ItemReOrderLvl <= reorder_item.ItemQuant)
        //        { 
        //            //send email;
        //        }

        //    return ans;

        //}
    }
}
