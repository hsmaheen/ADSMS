using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
   public class StoreService
    {
       StoreRepository sr = new StoreRepository();

       public List<object> getItemList()
       {
           List<object> Item = new List<object>();
           Item = sr.getItemList();
           return Item;
       }


       public List<object> getStockTrans()
       {

           List<object> stockTrans = new List<object>();
           stockTrans = sr.getStockTrans();
           return stockTrans;
       }

       public bool UpdateInventoryList(int itemID,string itemdesp,int itemReO, int itemReOQ, string uom, string BNo)
       {
           bool ans = false;
           ans=sr.UpdateInventoryList(itemID,itemdesp,itemReO, itemReOQ, uom, BNo);
           return ans;

       }

       public List<object> searchItem(string itemdesp)
       {
           List<object> searchlist = new List<object>();
           searchlist=sr.searchItems(itemdesp);
           return searchlist;
       }

       public List<object> searchTrans(string empName)
       {
           List<object> TransByemp = new List<object>();
           TransByemp = sr.searchTrans(empName);
           return TransByemp;
       }


       public List<object> listbyCN(string cn)
       {
           List<object> listbyCN = new List<object>();
           listbyCN = sr.listbyCategoryName(cn);
           return listbyCN;
       }

       public bool AddItem(int itemCatID, string itemdesp, int quant, int itemReO, int itemReOQ, string uom, string BNo, int Supplier1ID, int Supplier2ID, int Supplier3ID, int SPrice1, int SPrice2, int SPrice3)
       {
           bool ans = false;
           ans = sr.addItems(itemCatID, itemdesp, quant, itemReO, itemReOQ, uom, BNo,Supplier1ID, Supplier2ID, Supplier3ID,SPrice1, SPrice2, SPrice3);
           return ans;

       }




       //public object getItem(string id)
       //{
       //    object item=new object();
       //    int itemid=Convert.ToInt32(id);
       //    item=sr.GetItem(itemid);
       //    return item;


       //}
       //public bool deleteItem(object item)
       //{
       //    bool ans = false;
       //    ans = sr.DeleteItem(item);
       //    return ans;
           
       //}

    }
}
