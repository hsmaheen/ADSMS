using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class PurchaseOrderService
    {
        PurchaseOrderRepository po;
        public PurchaseOrderService()
        {
            po = new PurchaseOrderRepository();
        }

        //By Seint San Thandar Bo
        public List<object> selectPurchaseOrder()
        {
            return po.selectPurchaseOrderList();
        }

        //By Seint San Thandar Bo
        public List<object> selectPurchaseOrderDetail(int poID)
        {
            return po.selectPurchaseOrderDetailByPurchaseOrderID(poID);
        }
        //By Seint San Thandar Bo
        public bool updatePurchaseOrderForReceive(String poID, String approveEmpID)
        {
            return po.UpdatePurchaseOrder(poID, approveEmpID);
        }
    }
}
