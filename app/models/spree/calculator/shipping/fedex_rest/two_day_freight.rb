module Spree
  module Calculator::Shipping
    module FedexRest
      class TwoDayFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "TWO_DAY_FREIGHT"
        end

        def self.description
          I18n.t("fedex_rest.two_day_freight")
        end
      end
    end
  end
end
