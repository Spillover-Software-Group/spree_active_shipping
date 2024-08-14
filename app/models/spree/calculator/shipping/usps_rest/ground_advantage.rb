module Spree
  module Calculator::Shipping
    module UspsRest
      class GroundAdvantage < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_GROUND_ADVANTAGE"
        end

        def self.description
          I18n.t("usps_rest.ground_advantage")
        end
      end
    end
  end
end
