module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalEconomyFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "INTERNATIONAL_ECONOMY_FREIGHT"
        end

        def self.description
          I18n.t("fedex_rest.intl_economy_freight")
        end
      end
    end
  end
end
