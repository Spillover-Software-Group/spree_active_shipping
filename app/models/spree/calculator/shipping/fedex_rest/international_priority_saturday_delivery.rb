module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalPrioritySaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.intl_priority_saturday_delivery")
        end
      end
    end
  end
end
