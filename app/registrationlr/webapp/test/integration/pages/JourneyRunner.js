sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"registrationlr/test/integration/pages/VendorDetailsList",
	"registrationlr/test/integration/pages/VendorDetailsObjectPage",
	"registrationlr/test/integration/pages/MaterialDetailsObjectPage"
], function (JourneyRunner, VendorDetailsList, VendorDetailsObjectPage, MaterialDetailsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('registrationlr') + '/test/flpSandbox.html#registrationlr-tile',
        pages: {
			onTheVendorDetailsList: VendorDetailsList,
			onTheVendorDetailsObjectPage: VendorDetailsObjectPage,
			onTheMaterialDetailsObjectPage: MaterialDetailsObjectPage
        },
        async: true
    });

    return runner;
});

