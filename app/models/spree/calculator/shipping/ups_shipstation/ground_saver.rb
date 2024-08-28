module Spree
  module Calculator::Shipping
    module UpsShipstation
      class GroundSaver < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_GROUND_SAVER"
        end

        def self.description
          I18n.t("ups_shipstation.ground_saver")
        end
      end
    end
  end
end
