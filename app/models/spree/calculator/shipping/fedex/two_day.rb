module Spree
  module Calculator::Shipping
    module Fedex
      class TwoDay < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "TWO_DAY"
        end

        def self.description
          I18n.t("fedex.two_day")
        end
      end
    end
  end
end
