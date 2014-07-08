﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class ItemService
    {
        ItemRepository _ItemRepository = new ItemRepository();

        public List<object> GetItemListByReqID(int searchReqID)
        {
            return _ItemRepository.GetItemListNReqDetailsByReqID(searchReqID);
        }

        public bool UpdateItem(String itemID, String quantity, String userID)
        { 
            return _ItemRepository.UpdateItem(itemID,quantity,userID);
        }
    }
}
