module Spree
  module Calculator::Shipping
    module UspsShipstation
      class ParcelSelect < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PARCEL_SELECT"
        end

        def self.description
          I18n.t("usps_shipstation.parcel_select")
        end
      end
    end
  end
end
