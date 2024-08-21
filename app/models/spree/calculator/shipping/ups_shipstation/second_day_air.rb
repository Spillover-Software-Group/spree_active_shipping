module Spree
  module Calculator::Shipping
    module UpsShipstation
      class SecondDayAir < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_SECOND_DAY_AIR"
        end

        def self.description
          I18n.t("ups_shipstation.second_day_air")
        end
      end
    end
  end
end
