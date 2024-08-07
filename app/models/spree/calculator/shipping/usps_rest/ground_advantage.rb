module Spree
  module Calculator::Shipping
    module UspsRest
      class GroundAdvantage < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:30" #USPS Ground Advantage
        end

        def self.description
          I18n.t("usps_rest.ground_advantage")
        end
      end
    end
  end
end
