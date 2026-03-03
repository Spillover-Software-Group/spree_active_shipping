module Spree
  module Calculator::Shipping
    module FedexRest
      class TwoDaySaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "TWO_DAY_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex_rest.two_day_saturday_delivery")
        end
      end
    end
  end
end
