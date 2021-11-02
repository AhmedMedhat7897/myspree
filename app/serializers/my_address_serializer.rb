class MyAddressSerializer < Spree::Api::V2::BaseSerializer
    attributes :firstname, :lastname, :address

    attribute :address do |address|
        address.address1.to_s << ", " << 
        address.address2.to_s << ", " <<
        address.city.to_s << ", " <<
        address.zipcode.to_s << ", " <<
        address.state_name_text.to_s << ", " <<
        address.state_abbr.to_s << ", " <<
        address.country_name.to_s << "."
    end
end

