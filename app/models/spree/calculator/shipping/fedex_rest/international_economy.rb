module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalEconomy < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "INTERNATIONAL_ECONOMY"
        end

        def self.description
          I18n.t("fedex_rest.intl_economy")
        end
      end
    end
  end
end
