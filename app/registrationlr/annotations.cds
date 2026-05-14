using venRegistration as service from '../../srv/registration';
annotate service.VendorDetails with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'VENDOR_ID',
                Value : VENDOR_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NAME',
                Value : NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MOBILE_NO',
                Value : MOBILE_NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EMAIL_ID',
                Value : EMAIL_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ADDRESS',
                Value : ADDRESS,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Material Details',
            ID : 'MaterialDetails',
            Target : 'TO_MATERIALS/@UI.LineItem#MaterialDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'VENDOR_ID',
            Value : VENDOR_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'NAME',
            Value : NAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MOBILE_NO',
            Value : MOBILE_NO,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EMAIL_ID',
            Value : EMAIL_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ADDRESS',
            Value : ADDRESS,
        },
    ],
);

annotate service.MaterialDetails with @(
    UI.LineItem #MaterialDetails : [
        {
            $Type : 'UI.DataField',
            Value : MATERIAL_ID,
            Label : 'MATERIAL_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : MATERIAL_DESC,
            Label : 'MATERIAL_DESC',
        },
        {
            $Type : 'UI.DataField',
            Value : PRICE,
            Label : 'PRICE',
        },
        {
            $Type : 'UI.DataField',
            Value : QUANTITY,
            Label : 'QUANTITY',
        },
        {
            $Type : 'UI.DataField',
            Value : UOM,
            Label : 'UOM',
        },
    ]
);

