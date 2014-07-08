  using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class RequisitionService
    {
        RequisitionRepository _requisitionRepository = new RequisitionRepository();

        public List<object> GetRequisitionListForGv(int ReqDepId)
        {
            return _requisitionRepository.GetRequisitionListForGv(ReqDepId);
        }

        public object GetReq_Emp_DeptDetailsListByReqId(int ReqId)
        {
            return _requisitionRepository.GetReq_Emp_DeptDetailsListByReqId(ReqId);
        }

        public List<object> GetRequisitionListByStatus(int ReqDeptId,string searchReqStatus)
        {
            return _requisitionRepository.GetRequisitionListByStatus(ReqDeptId,searchReqStatus);
        }

        public requisition GetRequisitionDetailsByReqID(int searchReqID)
        {
            return _requisitionRepository.GetRequisitionDetailsByID(searchReqID);
        }

        public void UpdateConfirmRequisition(int ReqIDtoUpdate,string status,string reason,int LoginID)
        {
            _requisitionRepository.UpdateConfirmRequisition(ReqIDtoUpdate,status,reason,LoginID);   
        }
        public List<RequisitionItems> RequisitionItemByCategory()
        {
            RequisitionRepository rs = new RequisitionRepository();
            List<RequisitionItems> obj = rs.GetRequisitionItemGroupByItem();
            return obj;
        }
        public List<RequisitionItemsDetail> RequisitionDetailsItemByCategory(String categoryID)
        {
            RequisitionRepository rs = new RequisitionRepository();
            List<RequisitionItemsDetail> obj = rs.GetRequisitionDetailItemGroupByItem(categoryID);
            return obj;
        }
        public String TestTwo()
        {
            RequisitionRepository rs = new RequisitionRepository();
            return rs.FromDS();
        }

        RequisitionRepository requisition = new RequisitionRepository();
    }
}
