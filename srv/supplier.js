const cds = require('@sap/cds')

class SupplierService extends cds.ApplicationService {
    /** Registering supplier event handlers */
    async init() {
        this.on('READ', 'Supplier', (req) => this.onSupplierRead(req));
        return super.init();
    }

    async onSupplierRead(req) {
        console.log('>> delegating to S4 service...', req.query);
        const top = parseInt(req._queryOptions?.$top) || 100;
        const skip = parseInt(req._queryOptions?.$skip) || 0;

        const { BusinessPartner } = this.remoteService.entities;

        // Expands are required as the runtime does not support path expressions for remote services
        let result = await this.S4bupa.run(SELECT.from(BusinessPartner, bp => {
            bp('*'),
                bp.supplier(supplier => {
                    supplier.fullName
                })
        }).limit(top, skip));

    }
}
module.exports = { SupplierService }