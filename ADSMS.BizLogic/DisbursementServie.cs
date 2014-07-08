﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class DisbursementServie
    {

        DisbursementRepository dr = new DisbursementRepository();
        

        //stationeryEntities se;  
        public DisbursementServie()
        {
            //se = new stationeryEntities();
        }

        public List<object> getDisbHistory()
        {
            List<object> DisbHistory = new List<object>();
            DisbHistory = dr.getDisbHistory();

            return DisbHistory;
            
        }

        public List<object> getDisbHDetail(int disbID)
        {
            List<object> DisHisDetail = new List<object>();
            DisHisDetail = dr.getDisbHisDetail(disbID);

            return DisHisDetail;

        }
        //SEint San
        public List<object> selectDisbursementByDepartment(int depID)
        {
            return dr.getItemsByDepartment( depID);
        }
        public List<object> selectDisbursementDepartment()
        {
            return dr.getDepartmentListToDeliver();
        }
        public List<collectionPoint> selectAllCollectionPoint()
        {
            return dr.selectAllCollectionPoint();
        }
        
    }
}