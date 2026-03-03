module Spree
  module Calculator::Shipping
    module Fedex
      class ThreeDayFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "THREE_DAY_FREIGHT"
        end

        def self.description
          I18n.t("fedex.three_day_freight")
        end
      end
    end
  end
end
