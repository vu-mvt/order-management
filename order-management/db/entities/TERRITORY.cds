namespace V1;

using {managed} from '@sap/cds/common';
// using {V1.EMPLOYEE_TERRITORY as EMPLOYEE_TERRITORY} from '../schema';
using {V1.REGION as REGION} from '../schema';

entity TERRITORY : managed {
    key TerritoryID          : String(20) not null;
        TerritoryDescription : String(50) not null;
        RegionID             : Int32 not null;
        Region               : Association to REGION
                                   on Region.RegionID = RegionID;
// Employees            : Composition of many EMPLOYEE_TERRITORY
//                            on Employees.Territory = $self;
}
