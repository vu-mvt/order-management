using {V1 as V1_Table} from '../db/schema';

service OrderManagementService {
    @odata.draft.enabled
    entity ORDER as projection on V1_Table.ORDER;
    entity ORDER_DETAIL as projection on V1_Table.ORDER_DETAIL;
    entity PRODUCT as projection on V1_Table.PRODUCT;
    entity EMPLOYEE as projection on V1_Table.EMPLOYEE;
    entity CUSTOMER as projection on V1_Table.CUSTOMER;
    entity SHIPPER as projection on V1_Table.SHIPPER;
    entity CATEGORY as projection on V1_Table.CATEGORY;
    entity SUPPLIER as projection on V1_Table.SUPPLIER;

    type response_msg {
        code: String enum {
            done;
            fail;
        };
        message: String(255);
    };
    
    
    action order_request() returns response_msg;
}