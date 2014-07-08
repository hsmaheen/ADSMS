using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;
using System.Threading.Tasks;
using ADSMS.DataAccess;
namespace ADSMS.BizLogic
{
    public class RegistrationService
    {
        EmployeeRepository erep = new EmployeeRepository();
        public bool registeremployee(string empName, string empEmail, int empDepId, int roleId, string empContact)
        {
            try
            {

                employee emp = new employee();
                emp.EmpIsDepRep = false;
                emp.EmployeeContact = Convert.ToInt32(empContact);
                emp.EmployeeName = empName;
                emp.EmployeeDepId = empDepId;
                emp.EmployeeEmail = empEmail;
                emp.EmployeeRoleID = roleId;
                erep.saveemployee(emp);

                return true;

            }
            catch (Exception e)
            {
                return false;

            }

        }
        public bool registerStoreemployee(string empName, string empEmail, int roleId, string empContact)
        {
            try
            {

                storeemp semp = new storeemp();
                semp.StoreEmpContact = Convert.ToInt32(empContact);
                semp.StoreEmpName = empName;
                semp.StoreEmpEmail = empEmail;
                semp.StoreEmpRoleID = roleId;
                erep.saveStoreemployee(semp);
                return true;

            }
            catch (Exception e)
            {
                return false;

            }

        }

        public List<Object> getallroles()
        {
            List<Object> rolelist = new List<Object>();
            rolelist = erep.getallroles();
            return rolelist;
        }

        public List<Object> getalldep()
        {
            List<Object> deplelist = new List<Object>();
            deplelist = erep.getalldep();
            return deplelist;
        }

        public string getusernameofemp(string email)
        {
            string name;
            name = erep.getusernameofemp(email);
            return name;



        }

        //Checking for Dep Rep
        public bool IsDepRep(string email)
        {
            bool ans = false;

            ans = erep.isDepRep(email);
            return ans;

 
        }

        //Checking for Temp Dep Head
        public bool IsTempDepHead(string email)
        {
            bool ans = false;
            ans = erep.isTempDepHead(email);
            return ans;
 
        }

        public string getusernameofStoreEmp(string email)
        {
            string name;
            name = erep.getusernameofStoreemp(email);
            return name;



        }

        public int getUserIDofemp(string email)
        {
            int id;
            id = erep.getUseridofemp(email);
            return id;



        }
        public int getUserIDofStoreEmp(string email)
        {
            int id;
            id = erep.getUserIdofStoreemp(email);
            return id;



        }

        public bool ValidateUser(string username, string password)
        {
            bool ans = false;
            if (Membership.ValidateUser(username, password))
            {
                ans = true;
                return ans;
            }
            else
                return false;
        }

    }
}
