module Spree
  module Calculator::Shipping
    module UspsRest
      class ParcelSelectLightweight < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "PARCEL_SELECT_LIGHTWEIGHT"
        end

        def self.description
          I18n.t("usps_rest.parcel_select_lightweight")
        end
      end
    end
  end
end
