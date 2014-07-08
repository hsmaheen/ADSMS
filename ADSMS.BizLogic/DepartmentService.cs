﻿  using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class DepartmentService
    {
        DepartmentRepository drep = new DepartmentRepository();

        public List<object> getDeptList()
        {
            List<object> Dept = new List<object>();
            Dept = drep.getDeptList();
            return Dept;
        }
        public List<object> getRequests()
        {
            List<object> relist = new List<object>();
            relist= drep.getRequests();
            return relist;
        }

        public department GetdepartmentDetailsByDeptID(int Deptid)
        {
            return drep.GetdepartmentDetailsByDeptID(Deptid);
        }
        public List<object> getItemByDep(string Itemid)
        {
            int itempid = Convert.ToInt32(Itemid);
            List<object> itemlist = new List<object>();
            itemlist = drep.GetItembyDep(itempid);
            return itemlist;

           
        }

        public bool savedisb(Disbursement_M disb,int userid)
        {
            Disbursement_M disbl = new Disbursement_M();
            disbl =disb;
            bool ans = false;
            ans = drep.saveDisblist(disbl,userid);
            return ans;
        }

        public void UpdateDepartment(department curDept)
        {
            drep.UpdateDepartment(curDept);
        }

        public void UpdateDeptRapNameById(int DeptId,string DeptRapName)
        {
            drep.UpdateDeptRapNameById(DeptId,DeptRapName);
        }
    }
    
       
}
