namespace V1;

using {managed} from '@sap/cds/common';
using {BaseInfoAspect, PhoneFaxAspect} from '../schema';
using {V1.PRODUCT as PRODUCT} from '../schema';

entity SUPPLIER : managed, BaseInfoAspect, PhoneFaxAspect {
    key SupplierID   : Int32 not null;
        CompanyName  : String(40) not null;
        ContactName  : String(30);
        ContactTitle : String(30);
        HomePage     : String;

        Products     : Association to many PRODUCT
                           on Products.SupplierID = SupplierID;
}
