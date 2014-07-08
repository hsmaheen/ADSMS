using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class DelegateRepository_Jas
    {
        stationeryEntities entities = new stationeryEntities();

        public delegation SearchDelegationWithDelgApproveEmpIdNStatusNDate(int DelgApprovedId,string status)
        {
            try
            {
                delegation delegation = new delegation();
                DateTime nowTime=DateTime.UtcNow;

                delegation=(from d in entities.delegations
                                where d.DelApproveEmpID == DelgApprovedId && d.DelgStatus==status && (d.DelgFromDate >= nowTime || nowTime <= d.DelgToDate)
                                select d).FirstOrDefault();

                return delegation;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

       public delegation SearchDelegationWithDelgEmpIdNApprovedIDNStatusNDate(int DelgEmpId,int approvedId,string status)
        {
            try
            {
                delegation delegation = new delegation();
                DateTime nowTime = DateTime.UtcNow;

                delegation = (from d in entities.delegations
                              where d.DelgEmpID == DelgEmpId && d.DelApproveEmpID==approvedId && d.DelgStatus==status &&(d.DelgFromDate >= nowTime || nowTime <= d.DelgToDate)
                              select d).FirstOrDefault();

                return delegation;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void SaveNewDelegation(delegation toSaveDelegation)
        {
            try
            {
                entities.delegations.Add(toSaveDelegation);
                entities.SaveChanges();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }

        public void UpdateDelegation(delegation ToUpdateDelegation)
        {
            try
            {
                delegation delegation = new DataAccess.delegation();
                delegation = (from d in entities.delegations
                              where d.DelgID == ToUpdateDelegation.DelgID
                              select d).FirstOrDefault();

                if (delegation!=null)
                {
                    delegation.DelApproveEmpID = ToUpdateDelegation.DelApproveEmpID;
                    delegation.DelgEmpID = ToUpdateDelegation.DelgEmpID;
                    delegation.DelgFromDate = ToUpdateDelegation.DelgFromDate;
                    delegation.DelgStatus = ToUpdateDelegation.DelgStatus;
                    delegation.DelgToDate = ToUpdateDelegation.DelgToDate;
                    entities.SaveChanges();    
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            } 
        }
    }
}
