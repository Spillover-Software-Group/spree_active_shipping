module Spree
  module Calculator::Shipping
    module FedexRest
      class OneDayFreightSaturdayDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.one_day_freight_saturday_delivery")
        end
      end
    end
  end
end
