using emp.details as db from '../db/employeemodels';

@path: '/EmployeeSRV'
service Emp {
    entity empfd as projection on db.empfulldetails;
    entity empad as projection on db.empaddress;
}