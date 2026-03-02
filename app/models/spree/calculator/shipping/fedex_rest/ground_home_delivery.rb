module Spree
  module Calculator::Shipping
    module FedexRest
      class GroundHomeDelivery < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.ground_home_delivery")
        end
      end
    end
  end
end
