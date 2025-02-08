using {OP_API_BUSINESS_PARTNER_SRV as opS4} from './external/OP_API_BUSINESS_PARTNER_SRV';

service opMockService {
  entity BusinessPartner as
    projection on opS4.A_BusinessPartner {
      key BusinessPartner     as ID,
          FirstName           as firstName,
          LastName            as lastName,
          BusinessPartnerName as name,
          to_Supplier         as supplier
    }

  entity Supplier        as
    projection on opS4.A_Supplier {
      key Supplier         as ID,
          SupplierFullName as fullName
    }
}
