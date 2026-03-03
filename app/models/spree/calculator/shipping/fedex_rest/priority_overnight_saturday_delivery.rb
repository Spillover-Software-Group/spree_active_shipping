module Spree
  module Calculator::Shipping
    module FedexRest
      class PriorityOvernightSaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "PRIORITY_OVERNIGHT_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex_rest.priority_overnight_saturday_delivery")
        end
      end
    end
  end
end
