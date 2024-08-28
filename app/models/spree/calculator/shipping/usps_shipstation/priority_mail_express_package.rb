module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailExpressPackage < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_EXPRESS_PACKAGE"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_express_package")
        end
      end
    end
  end
end
