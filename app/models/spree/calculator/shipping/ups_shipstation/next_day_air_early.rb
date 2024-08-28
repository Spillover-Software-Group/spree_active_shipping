module Spree
  module Calculator::Shipping
    module UpsShipstation
      class NextDayAirEarly < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_NEXT_DAY_AIR_EARLY"
        end

        def self.description
          I18n.t("ups_shipstation.next_day_air_early")
        end
      end
    end
  end
end
