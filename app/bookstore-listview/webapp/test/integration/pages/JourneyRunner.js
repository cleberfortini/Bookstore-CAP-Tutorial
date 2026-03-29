sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"cviana/com/br/bookstorelistview/test/integration/pages/BooksList",
	"cviana/com/br/bookstorelistview/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('cviana/com/br/bookstorelistview') + '/test/flpSandbox.html#cvianacombrbookstorelistview-tile',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

