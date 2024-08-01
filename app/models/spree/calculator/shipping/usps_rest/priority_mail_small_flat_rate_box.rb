module Spree
  module Calculator::Shipping
    module UspsRest
      class PriorityMailSmallFlatRateBox < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:28" #Priority Mail {0}™ Small Flat Rate Box
        end

        def self.description
          I18n.t("usps_rest.priority_mail_small_flat_rate_box")
        end
      end
    end
  end
end
