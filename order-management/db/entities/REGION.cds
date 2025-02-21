namespace V1;

using {managed} from '@sap/cds/common';
using {V1.TERRITORY as TERRITORY} from '../schema';

entity REGION : managed {
    key RegionID          : Int32 not null;
        RegionDescription : String(50) not null;

        Territories       : Association to many TERRITORY
                                on Territories.RegionID = RegionID;
}
