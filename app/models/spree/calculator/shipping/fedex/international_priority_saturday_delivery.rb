module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPrioritySaturdayDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex.intl_priority_saturday_delivery")
        end
      end
    end
  end
end
