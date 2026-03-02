module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalEconomyFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.intl_economy_freight")
        end
      end
    end
  end
end
