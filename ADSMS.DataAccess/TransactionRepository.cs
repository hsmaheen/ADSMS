using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;
namespace ADSMS.DataAccess
{
    public  class TransactionRepository
    {
        stationeryEntities se;
        public TransactionRepository()
        {
            se = new stationeryEntities();
        }
    }
}
