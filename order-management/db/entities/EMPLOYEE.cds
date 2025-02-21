namespace V1;

using {managed} from '@sap/cds/common';
using {BaseInfoAspect} from '../schema';
using {V1.ORDER as ORDER} from '../schema';
// using {V1.EMPLOYEE_TERRITORY as EMPLOYEE_TERRITORY} from '../schema';

entity EMPLOYEE : managed, BaseInfoAspect {
    key EmployeeID      : Int32 not null;
        LastName        : String(20) not null;
        FirstName       : String(10) not null;
        Title           : String(30);
        TitleOfCourtesy : String(25);
        BirthDate       : DateTime;
        HireDate        : DateTime;
        HomePhone       : String(24);
        Extension       : String(4);
        Photo           : Binary;
        Notes           : String;
        ReportsTo       : Int32;
        PhotoPath       : String(255);
        Employees1      : Association to many EMPLOYEE
                              on Employees1.EmployeeID = EmployeeID;
        Employee1       : Association to EMPLOYEE
                              on Employee1.EmployeeID = EmployeeID;
        Orders          : Association to many ORDER
                              on Orders.EmployeeID = EmployeeID;
// Territories     : Composition of many EMPLOYEE_TERRITORY
//                       on Territories.Employee = $self;
}
