using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;
using ADSMS.BizLogic;

namespace ADSMS.BizLogic
{
    public class DelegationService
    {
        DelegateRepository_Jas _DelegationRepository = new DelegateRepository_Jas();

        public delegation SearchDelegationWithDelgApproveEmpId_Status_Date(int ApprovedEmpId, string Delegstionstatus)
        {
            return _DelegationRepository.SearchDelegationWithDelgApproveEmpIdNStatusNDate(ApprovedEmpId,Delegstionstatus);
        }

        public delegation SearchDelegationWithDelgEmpId_ApprovedID_Status_Date(int DelgEmpID,int ApprovedId,string status)
        {
            return _DelegationRepository.SearchDelegationWithDelgEmpIdNApprovedIDNStatusNDate(DelgEmpID,ApprovedId,status);
        }

        public void SaveNewDelegation(delegation curdel)
        {
            _DelegationRepository.SaveNewDelegation(curdel);
        }

        public void UpdateDelegation(delegation ToUpdateDelegation)
        {
            _DelegationRepository.UpdateDelegation(ToUpdateDelegation);
        }
    }
}
