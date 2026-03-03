module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalFirst < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_FIRST"
        end

        def self.description
          I18n.t("fedex.intl_first")
        end
      end
    end
  end
end
