module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalPrioritySaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY_SATURDAY_DELIVERY"
        end

        def self.description
          I18n.t("fedex_rest.intl_priority_saturday_delivery")
        end
      end
    end
  end
end
