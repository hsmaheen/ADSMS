using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class RequisitionItems
    {
        string categoryid;
        string categoryname;
        string quantity;

        public string CategoryID
        {
            get { return categoryid; }
            set { categoryid = value; }
        }
        public string CategoryName
        {
            get { return categoryname; }
            set { categoryname = value; }
        }
      
        public string Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
    }
}
