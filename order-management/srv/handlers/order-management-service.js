const cds = require('@sap/cds')

/**
 * Implementation for Risk Management service defined in ./risk-service.cds
 */
module.exports = cds.service.impl(async function () {
    this.on('READ', 'ORDER', async (req, next) => {
        console.log("on read order");
        // add new
        console.log("Test build CI/CD for CAP project");
        // add v2
        console.log("Check auto script");

        // add v3
        console.log("Check auto script v3");

        // add v4
        console.log("Check auto script v4");
        
        // add v5
        console.log("Check auto script v5 CI/CD");

        // add v6
        console.log("Check auto script v6 CI/CD");
        
        return next();
    })
});