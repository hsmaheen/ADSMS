using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
   public  class DepartmentDisbDetails
    {
        public int DepID { get; set; }
        public string DepName { get; set; }
        public int DepDisID { get; set; }
        public string DepCPName { get; set; }
        public List<Object> DepDisbItems { get; set; }
    }
}
