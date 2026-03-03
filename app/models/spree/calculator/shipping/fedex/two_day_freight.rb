module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDayFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "TWO_DAY_FREIGHT"
        end

        def self.description
          I18n.t("fedex.two_day_freight")
        end
      end
    end
  end
end
