const cds = require('@sap/cds')

/**
 * Implementation for Risk Management service defined in ./risk-service.cds
 */
module.exports = cds.service.impl(async function () {
    this.on('READ', 'ORDER', async (req, next) => {
        console.log("on read order");
        return next()
    })
});