module Spree
  module Calculator::Shipping
    module UspsShipstation
      class MediaMailPackage < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_MEDIA_MAIL"
        end

        def self.description
          I18n.t("usps_shipstation.media_mail_package")
        end
      end
    end
  end
end
