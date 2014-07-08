using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.DataAccess
{
    public class ItemRepository
    {
        stationeryEntities entities = new stationeryEntities();

        public List<object> GetItemListNReqDetailsByReqID(int searchReqID)
        {
            try
            {
                List<object> currentItemList = new List<object>();
                var query = (from rd in entities.requisitiondetails
                             join i in entities.items on rd.ReqItemID equals i.ItemID
                             where rd.ReqID == searchReqID
                             select new
                             {
                                 rd.ReqQuantityReq,
                                 rd.ReqID,
                                 rd.ReqStatus,
                                 i.ItemID,
                                 i.ItemCatID,
                                 i.ItemDescription,
                                 i.ItemReOrderLvl,
                                 i.ItemReOrderQuant,
                                 i.ItemUOM,
                                 i.ItemBinID,
                                 i.ItemQuant,
                             }).ToList();
                currentItemList=query.ToList<object>();
                return currentItemList;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool UpdateItem(String itemID, String quantity, String userID)
        {
            try
            {
                int id = Convert.ToInt32(itemID);
                int updateqty = Convert.ToInt32(quantity);

                var query = from p in entities.items
                            where p.ItemID == id
                            select p;
                item _item = query.SingleOrDefault();

                //Get original quantity
                int originalqty = _item.ItemQuant ?? default(int);

                //Update the quantity
                _item.ItemQuant = updateqty;

                entities.SaveChanges();

                //Save In Transaction if original qty < update quantity  transtype is  in

                if (originalqty < updateqty)
                {
                    transaction t = new transaction();
                   // t.TransID = 1;
                    t.TransCode = "ADJ";
                    t.TransactionType = "in";
                    t.TransDate = DateTime.Today.Date;
                    t.TransItemQuant =updateqty - originalqty;
                    t.TransItemBalance = updateqty;
                    t.TransItemID = _item.ItemID;
                    t.TransReason = "Monthly Adjustment run";
                    t.TranUserID = Convert.ToInt32(userID);


                    entities.transactions.Add(t);
                    entities.SaveChanges();

                }
                else
                {
                    transaction t = new transaction();
                    //t.TransID = 1;
                    t.TransCode = "ADJ";
                    t.TransactionType = "out";
                    t.TransDate = DateTime.Today.Date;
                    t.TransItemQuant = originalqty-updateqty;
                    t.TransItemBalance = updateqty;
                    t.TransItemID = _item.ItemID;
                    t.TransReason = "Monthly Adjustment run";
                    t.TranUserID = Convert.ToInt32(userID);


                    entities.transactions.Add(t);
                    
                }
                entities.SaveChanges();

            }

            catch (Exception ex)
            {
                String aa = ex.ToString();

            }

            return true;

        }
    }
}
