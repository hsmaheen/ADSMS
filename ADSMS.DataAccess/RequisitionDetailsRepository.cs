using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSMS.DataAccess
{
    public class RequisitionDetailsRepository
    {
        
        stationeryEntities entities = new stationeryEntities();

       
        public void UpdateConfirmRequisitionDetails(int ReqIDtoUpdate, string status)
        {
            try
            {
                requisitiondetail requisitiondetails = new DataAccess.requisitiondetail();
                requisitiondetails = (from r in entities.requisitiondetails
                               where r.ReqID == ReqIDtoUpdate
                               select r).FirstOrDefault();

                if (requisitiondetails != null)
                {
                    requisitiondetails.ReqStatus = status;
                    entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
