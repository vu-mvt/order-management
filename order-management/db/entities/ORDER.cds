namespace V1;

using {
    managed,
    Currency
} from '@sap/cds/common';
using {V1.CUSTOMER as CUSTOMER} from '../schema';
using {V1.EMPLOYEE as EMPLOYEE} from '../schema';
using {V1.SHIPPER as SHIPPER} from '../schema';
using {V1.ORDER_DETAIL as ORDER_DETAIL} from '../schema';

@assert.unique: {OrderID: [OrderID]}
entity ORDER : managed {
        @mandatory
        @readonly
    key OrderID        : String(10);
        CustomerID     : String(5);
        EmployeeID     : Int32;

        @mandatory
        OrderDate      : Date default $now;
        RequiredDate   : DateTime;
        ShippedDate    : DateTime;
        ShipVia        : Int32;
        Freight        : Decimal(19, 4);
        ShipName       : String(40);
        ShipAddress    : String(60);
        ShipCity       : String(15);
        ShipRegion     : String(15);
        ShipPostalCode : String(10);
        ShipCountry    : String(15);
        Currency       : Currency;  
        Customer       : Association to CUSTOMER
                             on Customer.CustomerID = CustomerID;
        Employee       : Association to EMPLOYEE
                             on Employee.EmployeeID = EmployeeID;
        Shipper        : Association to SHIPPER
                             on Shipper.ShipperID = ShipVia @title: 'Shipper ID';
        Order_Details  : Composition of many ORDER_DETAIL
                             on Order_Details.OrderID = OrderID;
}
