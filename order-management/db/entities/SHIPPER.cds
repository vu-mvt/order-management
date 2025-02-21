namespace V1;

using {managed} from '@sap/cds/common';
using {V1.ORDER as ORDER} from '../schema';

entity SHIPPER : managed {
    key ShipperID   : Int32 not null;
        CompanyName : String(40) not null;
        Phone       : String(24);

        Orders      : Association to many ORDER
                          on Orders.ShipVia = ShipperID;
}
