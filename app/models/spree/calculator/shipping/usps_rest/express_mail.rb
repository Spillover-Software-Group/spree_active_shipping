module Spree
  module Calculator::Shipping
    module UspsRest
      class ExpressMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:3" #Priority Mail Express {0}™
        end

        def self.description
          I18n.t("usps_rest.express_mail")
        end
      end
    end
  end
end
