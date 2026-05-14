namespace REG_APP;

using {cuid} from '@sap/cds/common';


entity VENDOR_DATA : cuid {
        VENDOR_ID    : Integer64;
        NAME         : String(50);
        MOBILE_NO    : Integer64;
        EMAIL_ID     : String(50);
        ADDRESS      : String(100);
        TO_MATERIALS : Composition of many MATERIAL_DATA
                               on TO_MATERIALS.Vendors = $self;
// TO_MATERIALS : Association to many MATERIAL_DATA
//                    on TO_MATERIALS.VENDOR_ID = ID;
}

entity MATERIAL_DATA : cuid {
        MATERIAL_ID   : String(10);
        // key VENDOR_ID     : Integer64;
        MATERIAL_DESC : String(50);
        QUANTITY      : Integer;
        UOM           : String(5);
        PRICE         : Double;
        Vendors       : Association to VENDOR_DATA;
}
