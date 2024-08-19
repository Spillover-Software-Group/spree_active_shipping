module Spree
  module Calculator::Shipping
    module UspsShipstation
      class GroundAdvantage < Spree::Calculator::Shipping::UspsShipstation::Base
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
