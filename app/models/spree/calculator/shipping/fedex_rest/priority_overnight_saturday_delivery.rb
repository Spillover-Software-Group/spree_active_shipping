module Spree
  module Calculator::Shipping
    module FedexRest
      class PriorityOvernightSaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.priority_overnight_saturday_delivery")
        end
      end
    end
  end
end
