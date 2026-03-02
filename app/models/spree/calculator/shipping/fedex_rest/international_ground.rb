module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalGround < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.intl_ground")
        end
      end
    end
  end
end
