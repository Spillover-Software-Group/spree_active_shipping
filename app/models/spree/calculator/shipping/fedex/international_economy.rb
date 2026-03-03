module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalEconomy < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_ECONOMY"
        end

        def self.description
          I18n.t("fedex.intl_economy")
        end
      end
    end
  end
end
