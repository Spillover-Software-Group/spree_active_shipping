module Spree
  module Calculator::Shipping
    module Fedex
      class StandardOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "STANDARD_OVERNIGHT"
        end

        def self.description
          I18n.t("fedex.standard_overnight")
        end
      end
    end
  end
end
