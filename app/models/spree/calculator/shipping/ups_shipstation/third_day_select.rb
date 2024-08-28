module Spree
  module Calculator::Shipping
    module UpsShipstation
      class ThirdDaySelect < Spree::Calculator::Shipping::UpsShipstation::Base
        def self.mail_class
          "UPS_THIRD_DAY_SELECT"
        end

        def self.description
          I18n.t("ups_shipstation.third_day_select")
        end
      end
    end
  end
end
