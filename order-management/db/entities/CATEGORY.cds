namespace V1;

using {managed} from '@sap/cds/common';
using {V1.PRODUCT as PRODUCT} from '../schema';


entity CATEGORY : managed {
    key CategoryID   : Int32 not null;
        CategoryName : String(60);
        Descriptions : String(60);
        Picture      : Binary;
        Products     : Association to many PRODUCT
                           on Products.CategoryID = CategoryID;
}
