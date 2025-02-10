using { API_BUSINESS_PARTNER as S4 } from './external/API_BUSINESS_PARTNER';
using { OP_API_BUSINESS_PARTNER_SRV as bupa } from './external/OP_API_BUSINESS_PARTNER_SRV';

/**
 * S4中的实体包含大量的字段，通过service可以对S4对象进行裁简和属性重命名，降低使用难度
 */
service SupplierService {

    entity Suppliers as projection on bupa.A_BusinessPartner {
        key BusinessPartner as ID,
        BusinessPartnerFullName as fullName,
        BusinessPartnerIsBlocked as isBlocked,
        Supplier as supplierID,
        to_Supplier as supplierDetail
    }

    entity SupplierDetail as projection on bupa.A_Supplier {
        key Supplier as ID
    }

    entity SupplierAddresses as projection on bupa.A_BusinessPartnerAddress {
        BusinessPartner as bupaID,
        AddressID as ID,
        CityName as city,
        StreetName as street,
        County as county
    }
}


service RemoteService {
  entity BusinessPartner as projection on S4.A_BusinessPartner {
    key BusinessPartner as ID,
    FirstName as firstName,
    LastName as lastName,
    BusinessPartnerName as name,
    to_BusinessPartnerAddress as addresses
  }
  entity BusinessPartnerAddress as projection on S4.A_BusinessPartnerAddress {
            BusinessPartner as ID,
            AddressID as addressId,
            to_EmailAddress as email,
            to_PhoneNumber as phoneNumber
  }
  entity EmailAddress as projection on S4.A_AddressEmailAddress {
      key AddressID as addressId,
      EmailAddress as email
  }

  entity PhoneNumber as projection on S4.A_AddressPhoneNumber {
      key AddressID as addressId,
      PhoneNumber as phone
  }
}
