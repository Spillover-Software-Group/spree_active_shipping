module Spree
  module Calculator::Shipping
    module Fedex
      class GroundHomeDelivery < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "GROUND_HOME_DELIVERY"
        end

        def self.description
          I18n.t("fedex.ground_home_delivery")
        end
      end
    end
  end
end
