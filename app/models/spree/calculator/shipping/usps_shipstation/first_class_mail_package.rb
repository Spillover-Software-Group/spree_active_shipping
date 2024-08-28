module Spree
  module Calculator::Shipping
    module UspsShipstation
      class FirstClassMailPackage < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_FIRST_CLASS_MAIL_PACKAGE"
        end

        def self.description
          I18n.t("usps_shipstation.first_class_mail_package")
        end
      end
    end
  end
end
