using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
namespace ADSMS.DataAccess
{
    public class AdjustmentRepository
    {
        stationeryEntities entity;
        public AdjustmentRepository()
        {
            entity = new stationeryEntities();
        }

        public List<object> selectAdjustmentVoucher()
        {
            var query = from a in entity.adjustmentvouchers
                        select new {a.ADVID,a.ADVDate,a.ADVStatus,a.storeemp.StoreEmpName ,ApprovedBy =a.storeemp1.StoreEmpName  };
            List<object> adj = query.ToList<Object>();

            return adj;

        }

        public object selectAdjustmentVoucherByAdjustmentVoucherID(int id)
        {
            var query = from a in entity.adjustmentvouchers where a.ADVID == id
                        select new { a.ADVID, a.ADVDate, a.ADVStatus, a.storeemp.StoreEmpName, ApprovedBy = a.storeemp1.StoreEmpName };
           object adj = query.FirstOrDefault();

            return adj;

        }
        public List<object> selectAllAdjustmentVoucher()
        {
            var query = from a in entity.adjustmentvouchers

                        select new { a.ADVID, a.ADVDate, a.ADVStatus, a.storeemp.StoreEmpName, ApprovedBy = a.storeemp1.StoreEmpName };
            List<object> adj = query.ToList<Object>();

            return adj;

        }
        public List<object> selectAdjustmentVoucherDetails(int adjustmentVoucherID)
        {
            var query = from a in entity.adjustmentvoucherdetails where a.ADVID ==adjustmentVoucherID
                        select new { a.ADVItemID, a.item.ItemDescription, a.ADVQuantAdj, a.ADVReason };
            List<object> adjdetail = query.ToList<object>();

            return adjdetail;
        }
        public double selectAdjustmentVoucheTotal(int adjustmentVoucherID)
        {
            var query = from r in entity.adjustmentvoucherdetails
                        where r.ADVID == adjustmentVoucherID
                        group r by new { r.ADVID } into c
                        select
                            c.Sum(g => g.ADVAdjustedCost);
                       
            String aa = query.Single().ToString();
             return Convert.ToDouble(aa);
        }
        public List<object> selectAdjustmentVoucherToApprove(String userID)
        {
            int user_ID =Convert.ToInt32(userID); 
            var query = from t in entity.transactions
                        join items in entity.itemsuppliers on t.TransItemID equals items.ItemID
                        where t.TranUserID == user_ID && t.TransCode == "ADJ" && t.TransactionType != "Done" && items.SupplierRank == 1
                        select new { t.TransID, t.item.ItemID, t.item.ItemDescription, t.TransItemQuant, t.TransItemBalance, Price = items.Price, Amount = items.Price * t.TransItemQuant, t.TransDate, t.storeemp.StoreEmpName };

            List<object> adjToapply = query.ToList<object>();

            return adjToapply;
        }
        public bool InsertAdjustmentVoucher(adjustmentvoucher header, List<adjustmentvoucherdetail> details) {


            try
            {

                //creating a adjustmentvoucherheader
                entity.adjustmentvouchers.Add(header);
                entity.SaveChanges();

                //creating adjustmentdetails
                foreach (adjustmentvoucherdetail d in details)
                {
                    int tranID = d.ADVID;
                    d.ADVID = header.ADVID;
                    entity.adjustmentvoucherdetails.Add(d);

                     //Update Transaction
                    var query = from t in entity.transactions
                                where t.TransItemID == d.ADVItemID && t.TransID == tranID
                                select t;
                    transaction tran = query.FirstOrDefault();
                    tran.TransCode = "ADF";

                    entity.SaveChanges();
                }


               
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public void UpdateAdjustmentVoucher(int adjustMentVoucherID,String status,int userID)
        {
            var query = from a in entity.adjustmentvouchers
                        where a.ADVID == adjustMentVoucherID
                        select a;
            adjustmentvoucher voucher = query.SingleOrDefault();
            voucher.ADVStatus = status;
            voucher.ADVApprovedByEMpID = userID;
            entity.SaveChanges();
           
        }

        public List<storeemp> SelectSupervisor()
        {
            var query = from semp in entity.storeemps
                        where semp.StoreEmpRoleID == 2
                        select semp;
            List<storeemp> supervisorlist = query.ToList<storeemp>();
            return supervisorlist;
        }
        public storeemp SelectManager()
        {
            var query = from semp in entity.storeemps
                        where semp.StoreEmpRoleID == 1
                        select semp;
            storeemp manager = query.SingleOrDefault();
            return manager;
        }
        
    }
}
    