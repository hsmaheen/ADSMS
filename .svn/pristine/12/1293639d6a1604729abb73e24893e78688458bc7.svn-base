using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class StoreRepository
    {

        stationeryEntities se = new stationeryEntities();

        public List<object> getItemList()
        {
            List<object> ItemList = new List<object>();

            var q = from item in se.items
                    join ca in se.categories on item.ItemCatID equals ca.CategoryID
                    join Bin in se.bins on item.ItemBinID equals Bin.BinID
                    select new { item.ItemID, item.ItemDescription, item.ItemQuant, ca.CategoryName, item.ItemReOrderLvl, item.ItemReOrderQuant, item.ItemUOM, Bin.BinNumber };


            ItemList = q.ToList<object>();

            return ItemList;

        }

        public List<object> getStockTrans()
        {
            List<object> stockTrans = new List<object>();

            var q = (from trans in se.transactions
                    join it in se.items on trans.TransItemID equals it.ItemID
                    join semp in se.storeemps on trans.TranUserID equals semp.StoreEmpID
                    orderby trans.TransDate descending
                    select new { trans.TransCode, trans.TransID, it.ItemDescription, trans.TransDate, trans.TransReason, trans.TransItemQuant, trans.TransItemBalance, trans.TransactionType, semp.StoreEmpName }).OrderByDescending(x=>x.TransDate);

            stockTrans = q.ToList<object>();
            return stockTrans;
        }

        public item GetItem(int itemid)
        {
            item item = new item();
            item = se.items.Where(i => i.ItemID.Equals(itemid)).FirstOrDefault<item>();
            return item;
        }
        public item GetItemCatID(int itemid)
        {
            item item = new item();
            item = se.items.Where(i => i.ItemID.Equals(itemid)).FirstOrDefault<item>();
            return item;
        }

        public category Getcategory(string CategoryName)
        {
            category cate = new category();
            cate = se.categories.Where(i => i.CategoryName.Equals(CategoryName)).FirstOrDefault<category>();
            return cate;
        }
        public bin GetBin(int ItemBinbID)
        {
            bin bin = new bin();
            var q = from b in se.bins
                    where b.BinID == ItemBinbID
                    select b;
            bin = q.First();
            return bin;
        }
        public bool checknewbin(string BinName)
        {
            bool ans = false;
            var q = from b in se.bins
                    where b.BinNumber == BinName
                    select b;
            if (q != null)
            {
                ans = true;

            }
            else
            {
                return ans;
            }
            return ans;
        }

        public List<object> searchItems(string itemdesp)
        {
            List<object> SearchList = new List<object>();

            var q = from item in se.items
                    join ca in se.categories on item.ItemCatID equals ca.CategoryID
                    join Bin in se.bins on item.ItemBinID equals Bin.BinID
                    where item.ItemDescription.Contains(itemdesp)
                    select new { item.ItemID, item.ItemDescription, item.ItemQuant, ca.CategoryName, item.ItemReOrderLvl, item.ItemReOrderQuant, item.ItemUOM, Bin.BinNumber };

            SearchList = q.ToList<object>();

            return SearchList;
        }

        public List<object> searchTrans(string empName)
        {
            List<object> TransByemp = new List<object>();

            var q = from trans in se.transactions
                    join it in se.items on trans.TransItemID equals it.ItemID
                    join semp in se.storeemps on trans.TranUserID equals semp.StoreEmpID
                    where semp.StoreEmpName.Contains(empName)
                    orderby trans.TransDate descending
                    select new { trans.TransCode, trans.TransID, it.ItemDescription, trans.TransDate, trans.TransReason, trans.TransItemQuant, trans.TransItemBalance, trans.TransactionType, semp.StoreEmpName };

            TransByemp = q.ToList<object>();
            return TransByemp;
        }

        public List<object> listbyCategoryName(string cn)
        {
            List<object> listbyCN = new List<object>();
            {
                var q = from item in se.items
                        join ca in se.categories on item.ItemCatID equals ca.CategoryID
                        join Bin in se.bins on item.ItemBinID equals Bin.BinID
                        where ca.CategoryName == cn
                        select new { item.ItemID, item.ItemDescription, item.ItemQuant, ca.CategoryName, item.ItemReOrderLvl, item.ItemReOrderQuant, item.ItemUOM, Bin.BinNumber };



                listbyCN = q.ToList<object>();
                return listbyCN;
            }

        }


        public bool UpdateInventoryList(int itemID, string itemdesp, int itemReO, int itemReOQ, string uom, string BNo)
        {
            // se = new stationeryEntities();
            bool ans = false;
            bool test;
            bin bin = new bin();
            bin replacebin = new bin();
            item it = new item();
            //it.ItemDescription = itemdesp;
            //it.ItemQuant = quant;
            //it.ItemReOrderLvl = itemReO;
            //it.ItemReOrderQuant = itemReOQ;
            //it.ItemUOM = uom;
            //it.bin = bin;
            //category ca = Getcategory(cname);
            //ca.CategoryName = cname;

            //var p = from upitem in se.items
            //        join upca in se.categories on upitem.ItemCatID equals upca.CategoryID
            //        join upBin in se.bins on it.ItemBinID equals upBin.BinID
            //        // where it.ItemDescription==itemdesp || it.ItemReOrderLvl==itemReO ||it.ItemReOrderQuant==itemReOQ ||it.ItemUOM==uom ||bin.BinNumber==BNo
            //        where it.ItemID==itemID
            //        select new { upitem.ItemDescription, upitem.ItemReOrderLvl, upitem.ItemReOrderQuant, upitem.ItemUOM, upBin.BinNumber };

            var q = from upitem in se.items
                    where upitem.ItemID == itemID
                    select upitem;
            it = q.FirstOrDefault();

            bin = GetBin(it.ItemBinID);
            test = checknewbin(BNo);
            if (test == true)
            {
                if (bin.BinNumber != BNo)
                {
                    var m = from b in se.bins
                            where b.BinNumber == BNo
                            select b;
                    try
                    {
                        replacebin = m.First();
                        it.bin = replacebin;
                    }
                    catch (Exception ex)
                    {
                        return ans;

                    }

                }
            }
            it.ItemDescription = itemdesp;
            it.ItemReOrderLvl = itemReO;
            it.ItemReOrderQuant = itemReOQ;
            it.ItemUOM = uom;
            try
            {

                se.SaveChanges();
                ans = true;

            }
            catch (Exception ex)
            {
                ans = false;

            }
            return ans;
        }

        public bool addItems(int itemCatID, string itemdesp, int quant, int itemReO, int itemReOQ, string uom, string BNom, int Supplier1ID, int Supplier2ID, int Supplier3ID, int SPrice1, int SPrice2, int SPrice3)
        {
            itemsupplier its1 = new itemsupplier();
            itemsupplier its2 = new itemsupplier();
            itemsupplier its3 = new itemsupplier();
            supplier s1 = new supplier();
            supplier s2 = new supplier();
            supplier s3 = new supplier();

            s1 = se.suppliers.Find(Supplier1ID);
            s2 = se.suppliers.Find(Supplier2ID);
            s3 = se.suppliers.Find(Supplier3ID);

            bin newbin = new bin();

            var q = from b in se.bins
                    where b.BinNumber == BNom
                    select b;
            newbin = q.FirstOrDefault();
            bool ans = false;
            item Item = new item();
            Item.ItemCatID = itemCatID;
            Item.ItemDescription = itemdesp;
            Item.ItemQuant = quant;
            Item.ItemReOrderLvl = itemReO;
            Item.ItemReOrderQuant = itemReOQ;
            Item.ItemUOM = uom;
            Item.bin = newbin;
            try
            {
                se.items.Add(Item);
                se.SaveChanges();
            }
            catch (Exception)
            {

                //dos something
            }


            //adding for Supplier1

            its1.item = Item;
            its1.Price = SPrice1;
            its1.supplier = s1;
            its1.SupplierRank = 1;
            se.itemsuppliers.Add(its1);


            //adding for Supplier2

            its2.item = Item;
            its2.Price = SPrice2;
            its2.supplier = s2;
            its2.SupplierRank = 2;
            se.itemsuppliers.Add(its2);


            //adding for Supplier3

            its3.item = Item;
            its3.Price = SPrice3;
            its3.supplier = s3;
            its3.SupplierRank = 3;
            se.itemsuppliers.Add(its3);
            try
            {
                se.SaveChanges();
                ans = true;

            }
            catch (Exception ex)
            {
                ans = false;

            }


            //Adding to Transsaction Tables

            transaction it = new transaction();
            it.TransactionType = "in";
            it.TransCode = "NEWITEM"; //yet to decide
            it.TransDate = DateTime.Today;
            it.TransItemBalance = Item.ItemQuant ?? default(int);
            it.TransItemQuant = Item.ItemQuant ?? default(int);
            it.TransReason = "Added new Item: " + Item.ItemDescription;
            it.TranUserID = Convert.ToInt32(System.Web.HttpContext.Current.Session["userid"]);
            it.TransItemID = Item.ItemID;
            se.transactions.Add(it);

            se.SaveChanges();
            return ans;

        }




        //}


        //public bool DeleteItem(object delitem)
        //{
        //    bool ans=false;
        //    item newitem = new item();
        //    newitem = (item)delitem;
        //    try
        //    {
        //        se.items.Remove(newitem);
        //        se.SaveChanges();
        //        ans = true;
        //        return ans;
        //    }
        //    catch (Exception ex)
        //    {
        //        ans = false;
        //        return ans;
        //    }
        //}

    }
}
