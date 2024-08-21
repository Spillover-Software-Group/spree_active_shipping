module Spree
  module Calculator::Shipping
    module UpsShipstation
      class NextDayAir < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_NEXT_DAY_AIR"
        end

        def self.description
          I18n.t("ups_shipstation.next_day_air")
        end
      end
    end
  end
end
