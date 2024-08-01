module Spree
  module Calculator::Shipping
    module UspsRest
      class PriorityMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:1" #Priority Mail {0}™
        end

        def self.description
          I18n.t("usps_rest.priority_mail")
        end
      end
    end
  end
end
