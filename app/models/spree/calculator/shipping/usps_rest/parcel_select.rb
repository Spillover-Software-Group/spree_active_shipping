module Spree
  module Calculator::Shipping
    module UspsRest
      class ParcelSelect < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "PARCEL_SELECT"
        end

        def self.description
          I18n.t("usps_rest.parcel_select")
        end
      end
    end
  end
end
