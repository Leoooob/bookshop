const CDS = require("@sap/cds");

// Implementation for Books service as defined in catalog.cds
module.exports = CDS.service.impl(async function () {
  // after READ request to Books entity, perform the following
  this.after("READ", "Books", (oData) => {
    // if a single item is returned, cast to an array
    const aBooks = Array.isArray(oData) ? oData : [oData];
    aBooks.forEach((book) => {
      // only calculate if stock and criticality elements are 
      // requested, otherwise you cannot use the property 
      if (Object.hasOwn(book, "stock") && Object.hasOwn(book, "criticality")) {
        let criticality;

        // condition to set criticality value
        if (book.stock <= 0) {
          criticality = 1;
        } else if (book.stock < 15) {
          criticality = 2;
        } else if (book.stock < 250) {
          criticality = 0;
        } else {
          criticality = 3;
        }
        
        // set the criticality value to the book itself
        book.criticality = criticality;
      }
    });
  });
});
