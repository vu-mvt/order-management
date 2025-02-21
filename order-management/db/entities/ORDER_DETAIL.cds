namespace V1;

using {managed} from '@sap/cds/common';
using {V1.ORDER as ORDER} from '../schema';
using {V1.PRODUCT as PRODUCT} from '../schema';

entity ORDER_DETAIL : managed {
    key ItemNo    : UUID not null;

        OrderID   : String(10) not null;

        @mandatory
        ProductID : Int32 not null;

        @mandatory
        UnitPrice : Decimal(19, 4) not null;

        @mandatory
        @assert.range: [
            1,
            32767
        ]
        Quantity  : Int16 not null default 1;

        @mandatory
        @Measures    : {Unit: '%'}
        Discount  : String not null default 0;
        Order     : Association to ORDER
                        on Order.OrderID = OrderID;
        Product   : Association to PRODUCT
                        on Product.ProductID = ProductID;
}
