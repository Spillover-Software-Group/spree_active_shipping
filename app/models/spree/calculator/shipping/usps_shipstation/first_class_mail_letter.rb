module Spree
  module Calculator::Shipping
    module UspsShipstation
      class FirstClassMailLetter < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_FIRST_CLASS_MAIL_LETTER"
        end

        def self.description
          I18n.t("usps_shipstation.first_class_mail_letter")
        end
      end
    end
  end
end
