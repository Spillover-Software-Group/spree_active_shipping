module Spree
  module Calculator::Shipping
    module Fedex
      class OneDayFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "ONE_DAY_FREIGHT"
        end

        def self.description
          I18n.t("fedex.one_day_freight")
        end
      end
    end
  end
end
