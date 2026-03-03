module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalEconomyFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_ECONOMY_FREIGHT"
        end

        def self.description
          I18n.t("fedex.intl_economy_freight")
        end
      end
    end
  end
end
