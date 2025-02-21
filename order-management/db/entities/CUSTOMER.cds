namespace V1;

using {managed} from '@sap/cds/common';
using {
    BaseInfoAspect,
    PhoneFaxAspect
} from '../schema';
using {V1.ORDER as ORDER} from '../schema';


entity CUSTOMER : managed, BaseInfoAspect, PhoneFaxAspect {
    key CustomerID   : String(20) not null;
        CompanyName  : String(30);
        ContactName  : String(30);
        ContactTitle : String(30);
        Orders       : Association to many ORDER
                           on Orders.CustomerID = CustomerID;
}
