module Spree
  module Calculator::Shipping
    module Fedex
      class PriorityOvernightSaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "PRIORITY_OVERNIGHT_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex.priority_overnight_saturday_delivery")
        end
      end
    end
  end
end
