module Spree
  module Calculator::Shipping
    module FedexRest
      class ThreeDayFreightSaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "THREE_DAY_FREIGHT_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex_rest.three_day_freight_saturday_delivery")
        end
      end
    end
  end
end
