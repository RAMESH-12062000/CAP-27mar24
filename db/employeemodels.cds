//here we can describe the structure of the emp data and some required aspects means like id and name as unique like that etc...
namespace emp.details;

using { reusable.type as types} from './ReusableTypes';
using {
  cuid,
  //managed
} from '@sap/cds/common';

// here we are using like annotation=>@assert.unique for default values will be added in the output & which is not null and didn't allows duplicates...
@assert.unique: {
  email: [email],
  phone: [phone]
}

//this entity is used for empfulldetails...
entity empfulldetails : cuid, {
  fName           : String;
  lName           : String;
  gender          : String;
  DOB             : Date;
  contractStarted : Date;
  email           : types.Email not null; // This Email has to follow the Format and shuld not be null
  phone           : types.PhoneNumber not null;
  //address         : Composition of  Address; // <association or Composition name>_<key name>/address_ID will be generated once we add the Association
}

//this entity is used for empaddress...
entity empaddress {
  key ID       : UUID;
      city     : String not null;
      address  : String not null;
      pincode  : Integer not null;
      street   : String;
      landmark : String;
}

