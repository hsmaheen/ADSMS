﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration.Assemblies;

namespace ADSMS.DataAccess
{
    public class EmployeeRepository
    {
       
        stationeryEntities se = new stationeryEntities();
        public bool saveemployee(employee emp)
        {
            try
            {
                se.employees.Add(emp);
                se.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool saveStoreemployee(storeemp semp)
        {
            try
            {
                se.storeemps.Add(semp);
                se.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public List<Object> getallroles()
        {
            List<Object> roles = new List<Object>();
            var q = from r in se.roles
                    select r;
            roles = q.ToList<object>();
            return roles;

        }
        public List<Object> getalldep()
        {
            List<Object> deplist = new List<Object>();
            var s = from d in se.departments
                    select d;
            deplist = s.ToList<Object>();
            return deplist;

        }

        public string getusernameofemp(string email)
        {
            string name;
            List<employee> empl=new List<employee>();
            employee emp = new employee();

            var q = from e in se.employees
                    where e.EmployeeEmail == email
                    select e;
            empl = q.ToList();
            emp = empl.First();
            name = emp.EmployeeName;
            return name;

        }

        //method to check Dep Rep
        public bool isDepRep(string email)
        {
           bool ans = false;
           List<employee> empl1 = new List<employee>();
           employee emp1 = new employee();
           var l = from e in se.employees
                   where e.EmployeeEmail == email
                   select e;
           empl1 = l.ToList();
           emp1 = empl1.First();
           if (emp1.EmpIsDepRep == true)
           {
               ans = true;
           }
           else
               ans = false;
            return ans;

 
        }
        public string getusernameofStoreemp(string email)
        {
            string name;
            List<storeemp> sempl = new List<storeemp>();
            storeemp semp = new storeemp();

            var q = from e in se.storeemps
                    where e.StoreEmpEmail == email
                    select e;
            sempl = q.ToList();
            semp = sempl.First();
            name = semp.StoreEmpName;
            return name;

        }
        public int getUseridofemp(string email)
        {
            int id;
            List<employee> empl = new List<employee>();
            employee emp = new employee();

            var q = from e in se.employees
                    where e.EmployeeEmail == email
                    select e;
            empl = q.ToList();
            emp = empl.First();
            id = emp.EmployeeID;
            return id;

        }

        //method to check Dep Head
        public bool isTempDepHead(string email)
        {
            bool ans = false;
            int id2;
            delegation delg = new delegation();
            List<employee> empl2 = new List<employee>();
            employee emp2 = new employee();

            var q = from e in se.employees
                    where e.EmployeeEmail == email
                    select e;
            emp2 = q.FirstOrDefault();
            id2 = emp2.EmployeeID;


            //checking the delegation Table

            var m = from del in se.delegations
                    where del.DelgEmpID == id2 &&
                    del.DelgToDate >= DateTime.Today &&
                    del.DelgStatus == "approved"
                    select del;
            delg = m.FirstOrDefault();
            if (delg != null)
            {
                ans = true;
            }
            else
                ans = false;
  


           


            return ans;
 
        }
        public int getUserIdofStoreemp(string email)
        {
            int id;
            List<storeemp> sempl = new List<storeemp>();
            storeemp semp = new storeemp();

            var q = from e in se.storeemps
                    where e.StoreEmpEmail == email
                    select e;
            sempl = q.ToList();
            semp = sempl.First();
            id = semp.StoreEmpID;
            return id;

        }

        public employee GetEmployeeDetailsByReqID(int searchReqID)
        {
            try
            {
                employee currentEmp = new employee();
                currentEmp = (from r in se.requisitions
                         join e in se.employees on r.ReqEmpId equals e.EmployeeID
                         where r.ReqID == searchReqID
                         select e).FirstOrDefault();
                return currentEmp;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<employee> GetEmployeeDetailsByDeptID(int searchDeptID,int EmpID)
        {
            try
            {
                List<employee> currentEmp = new List<employee>();
                currentEmp = (from e in se.employees
                              where e.EmployeeDepId == searchDeptID && e.EmployeeID!=EmpID
                              select e).ToList();
                return currentEmp;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public employee GetEmployeeDetailsByEmpID(int searchEmpID)
        {
            try
            {
                employee currentEmp = new employee();
                currentEmp = (from e in se.employees
                              where e.EmployeeID == searchEmpID
                              select e).FirstOrDefault();
                return currentEmp;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void UpdateEmployeeDetailsToBeDeptRep(int empID,bool IsDeptRep)
        {
            try
            {
                employee emp = new DataAccess.employee();
                emp = (from r in se.employees
                       where r.EmployeeID == empID
                       select r).FirstOrDefault();

                if (emp != null)
                {
                    emp.EmpIsDepRep = IsDeptRep;
                    se.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<employee> GetEmployeeListByEmpIsDepRep(bool DeptRap)
        {
            try
            {
                List<employee> employeeList = new List<employee>();

                employeeList = (from r in se.employees
                       where r.EmpIsDepRep == DeptRap
                       select r).ToList<employee>();

                return employeeList;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            
        }

    }
}
