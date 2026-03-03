module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPriority < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY"
        end

        def self.description
          I18n.t("fedex.intl_priority")
        end
      end
    end
  end
end
