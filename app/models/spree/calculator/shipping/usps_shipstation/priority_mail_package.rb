module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailPackage < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_PACKAGE"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_package")
        end
      end
    end
  end
end
