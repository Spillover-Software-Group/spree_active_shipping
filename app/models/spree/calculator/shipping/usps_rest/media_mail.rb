module Spree
  module Calculator::Shipping
    module UspsRest
      class MediaMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.geo_group
          :domestic
        end

        def self.service_code
          "#{SERVICE_CODE_PREFIX[geo_group]}:6" #Media Mail®
        end

        def self.description
          I18n.t("usps_rest.media_mail")
        end
      end
    end
  end
end
