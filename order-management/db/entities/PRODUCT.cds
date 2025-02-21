namespace V1;

using {managed} from '@sap/cds/common';
using {V1.CATEGORY as CATEGORY} from '../schema';
using {V1.SUPPLIER as SUPPLIER} from '../schema';
using {V1.ORDER_DETAIL as ORDER_DETAIL} from '../schema';


entity PRODUCT : managed {
    key ProductID       : Int32 not null;
        ProductName     : String(40) not null;
        SupplierID      : Int32;
        CategoryID      : Int32;
        QuantityPerUnit : String(20);
        UnitPrice       : Decimal(19, 4);
        UnitsInStock    : Int16;
        UnitsOnOrder    : Int16;
        ReorderLevel    : Int16;
        Discontinued    : Boolean not null;
        Category        : Association to CATEGORY
                              on Category.CategoryID = CategoryID;
        Supplier        : Association to SUPPLIER
                              on Supplier.SupplierID = SupplierID;
        Order_Details   : Association to many ORDER_DETAIL
                              on Order_Details.ProductID = ProductID;
}
