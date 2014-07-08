using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Data.Entity;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class LoginService_Mobile
    {
        stationeryEntities se = new stationeryEntities();
        public List<object> Login(string username, string password)
        {
            List<Object> loginobj = new List<object>();
            string storeclerk = "Store Clerk";
            string storemanager = "Store Manager";
            string storesupervisor = "Store Supervisor";
            string dephead = "Department Head";
            string depemployee = "Department Employee";
            string name="";
            int roleid=0;
            string role;
            string[] roles;
            //if (Membership.ValidateUser(username, password))
            //{
            //    roles = Roles.GetRolesForUser(username);
            //    role = roles.FirstOrDefault();
            //    if (role == storeclerk)
            //    {
            //        roleid = 3; //Store Clerk
            //        name = getusernameofStoreemp(username);
            //        loginobj.Add(name);
            //        loginobj.Add(roleid);


            //    }
            //    else if (role == depemployee)  //for dep Rep
            //    {
            //        name = getusernameofemp(username);
            //        if(name=="false")
            //        {
            //            roleid=0;
            //            loginobj.Add(roleid);

            //        }
            //        else
            //        {
            //            roleid = 2;
            //            loginobj.Add(name);
            //            loginobj.Add(roleid);
            //        }
            //    }
            //}
            //else
            //{
            //    roleid = 0; //Not authenticated
            //    loginobj.Add(roleid);

            //}

            //return roleid.ToString();

            if (Membership.ValidateUser(username, password))
            {
                roles = Roles.GetRolesForUser(username);
                role = roles.FirstOrDefault();
                if (role == storeclerk)
                {
                    roleid = 3; //Store Clerk
                    name = getuserempIDofStoreemp(username);
                    loginobj.Add(name);
                    loginobj.Add(roleid);


                }
                else if (role == depemployee)  //for dep Rep
                {
                    name = getuserempIDofemp(username);
                    if (name == "false")
                    {
                        roleid = 0;
                        loginobj.Add(roleid);

                    }
                    else
                    {
                        roleid = 2;
                        loginobj.Add(name);
                        loginobj.Add(roleid);
                    }
                }
            }
            else
            {
                roleid = 0; //Not authenticated
                loginobj.Add(name);
                loginobj.Add(roleid);

            }

            return loginobj;

        }
        public string getuserempIDofemp(string email)
        {
            string empID;
            List<employee> empl = new List<employee>();
            employee emp = new employee();
            var q = from e in se.employees
                    where e.EmployeeEmail == email
                    select e;
            empl = q.ToList();
            emp = empl.First();
            if (emp.EmpIsDepRep == true)
            {
                empID = Convert.ToString(emp.EmployeeID);
            }
            else
            {
                empID = "false";
 
            }
         
            return empID;

        }
        public string getuserempIDofStoreemp(string email)
        {
            string empID;
            List<storeemp> sempl = new List<storeemp>();
            storeemp semp = new storeemp();

            var q = from e in se.storeemps
                    where e.StoreEmpEmail == email
                    select e;
            sempl = q.ToList();
            semp = sempl.First();
            empID = semp.StoreEmpID.ToString();
            return empID;

        }

    }
}
