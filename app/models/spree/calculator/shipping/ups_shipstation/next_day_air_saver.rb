module Spree
  module Calculator::Shipping
    module UpsShipstation
      class NextDayAirSaver < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_NEXT_DAY_AIR_SAVER"
        end

        def self.description
          I18n.t("ups_shipstation.next_day_air_saver")
        end
      end
    end
  end
end
