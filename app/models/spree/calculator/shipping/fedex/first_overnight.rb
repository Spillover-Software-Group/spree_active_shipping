module Spree
  module Calculator::Shipping
    module Fedex
      class FirstOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "FIRST_OVERNIGHT"
        end

        def self.description
          I18n.t("fedex.first_overnight")
        end
      end
    end
  end
end
