module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalGround < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_GROUND"
        end

        def self.description
          I18n.t("fedex.intl_ground")
        end
      end
    end
  end
end
