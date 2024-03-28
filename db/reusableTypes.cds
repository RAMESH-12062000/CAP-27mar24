namespace reusable.type;//this data used for reusing in any where...

type Amount : Decimal(10, 2);

//here type used for default and @assert.format(annotation) used for some pertcular formation will be accepted.. 
type Email : String @assert.format:'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$''.com';
type PhoneNumber : String@assert.format:'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';


aspect PersonalDetails {
    fName : String;
    lName :String;
}

/*
 * Coposition: Tight Coupling
 * Association: Loose
 * Employee
 * EmployeeAddress
 * EmployeeSalary
 * Department
 
employee.details.EmployeeDetails-Address.csv
context EmployeeDetails {
  entity Address : cuid, managed {
    city     : String not null;
    address  : String not null;
    pincode  : Integer not null;
    street   : String;
    landmark : String;
  }
} */


