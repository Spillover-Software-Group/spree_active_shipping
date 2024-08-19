module Spree
  module Calculator::Shipping
    module USPSShipstation
      class GroundAdvantage < Spree::Calculator::Shipping::USPSShipstation::Base
        def self.mail_class
          "USPS_GROUND_ADVANTAGE"
        end

        def self.description
          I18n.t("usps_shipstation.ground_advantage")
        end
      end
    end
  end
end
