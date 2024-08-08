module Spree
  module Calculator::Shipping
    module UspsRest
      class RetailGround < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_RETAIL_GROUND"
        end

        def self.description
          I18n.t("usps_rest.retail_ground")
        end
      end
    end
  end
end
