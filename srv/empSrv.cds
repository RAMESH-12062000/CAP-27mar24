using emp.details as db from '../db/employeemodels';

@path: '/EmployeeSRV'//this is for remove the odata and add path as given an quotation...
service Emp {

    //here empfd used as dummy you can take anything...
   entity empfd as projection on db.empfulldetails;
    entity empad as projection on db.empaddress;
}