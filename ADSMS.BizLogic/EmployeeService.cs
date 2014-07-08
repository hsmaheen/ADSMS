﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;

namespace ADSMS.BizLogic
{
    public class EmployeeService
    {
        EmployeeRepository _employeeRepository = new EmployeeRepository();

        public employee GetEmployeeDetailsByReqID(int SearchReqID)
        {
            return _employeeRepository.GetEmployeeDetailsByReqID(SearchReqID);
        }

        public List<employee> GetEmployeeDetailsByDeptID(int searchDeptId,int empId)
        {
            return _employeeRepository.GetEmployeeDetailsByDeptID(searchDeptId,empId);
        }

        public employee GetEmployeeDetailsByEmpID(int searchEmpID)
        {
            return _employeeRepository.GetEmployeeDetailsByEmpID(searchEmpID);
        }

        public void UpdateEmployeeDetailsTobeDeptRep(int EmpID, bool IsDeptRep)
        {
            _employeeRepository.UpdateEmployeeDetailsToBeDeptRep(EmpID,IsDeptRep);
        }

        public List<employee> GetEmployeeListByEmpIsDepRep(bool DeptRep)
        {
            return _employeeRepository.GetEmployeeListByEmpIsDepRep(DeptRep);
        }
    }
}