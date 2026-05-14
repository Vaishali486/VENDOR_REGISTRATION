    using {REG_APP} from '../db/TRANSACTION_TABLE';
    service venRegistration{
        @odata.draft.enabled
        entity VendorDetails as projection on REG_APP.VENDOR_DATA{
            *,
            VENDOR_ID as VENDOR_ID: String,
            MOBILE_NO as MOBILE_NO:String
        };
        // @odata.draft.enabled
        entity MaterialDetails as projection on REG_APP.MATERIAL_DATA{
            *,
            MATERIAL_ID as MATERIAL_ID : String
        };
    }
