module Spree
  module Calculator::Shipping
    module UpsShipstation
      class Ground < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_THIRD_DAYUPS_GROUND_SELECT"
        end

        def self.description
          I18n.t("ups_shipstation.ground")
        end
      end
    end
  end
end
