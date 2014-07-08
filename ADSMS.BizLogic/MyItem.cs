using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.BizLogic
{
    public class MyItem
    {
        public MyItem()
        {

        }
        private int _ReqItemID;
        public int ReqItemID { get { return _ReqItemID; } set { _ReqItemID = value; } }
        private string _ItemDescription;
        public string ItemDescription { get { return _ItemDescription; } set { _ItemDescription = value; } }
        private int _ReqQuantityReq = 1;
        public int ReqQuantityReq { get { return _ReqQuantityReq; } set { _ReqQuantityReq = value; } }
    }
    public class ItemCollection : Collection<MyItem>
    {
        public MyItem GetItemByID(int itemID)
        {
            for (int i = 0; i < this.Items.Count; i++)
            {
                if (this.Items[i].ReqItemID == itemID)
                {
                    return this.Items[i];
                }
            }
            return new MyItem();
        }
        public void AddItem(MyItem item, int quantity)
        {
            for (int i = 0; i < this.Items.Count; i++)
            {
                if (this.Items[i].ReqItemID == item.ReqItemID)
                {
                    this.Items[i].ReqQuantityReq += quantity;
                    return;
                }

            }
            this.Items.Add(item);
        }
        public void RemoveItem(int itemid)
        {
            for (int i = 0; i < this.Items.Count; i++)
            {
                if (this.Items[i].ReqItemID == itemid)
                {
                    base.Remove(Items[i]);
                    return;
                }
            }
        }
    }
}
