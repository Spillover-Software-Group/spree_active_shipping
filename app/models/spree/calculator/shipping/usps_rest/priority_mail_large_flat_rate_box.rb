module Spree
  module Calculator::Shipping
    module UspsRest
      class PriorityMailLargeFlatRateBox < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:22" #Priority Mail {0}™ Large Flat Rate Box
        end

        def self.description
          I18n.t("usps_rest.priority_mail_large_flat_rate_box")
        end
      end
    end
  end
end
