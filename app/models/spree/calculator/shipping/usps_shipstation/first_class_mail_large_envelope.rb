module Spree
  module Calculator::Shipping
    module UspsShipstation
      class FirstClassMailLargeEnvelope < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_FIRST_CLASS_MAIL_LARGE_ENVELOPE"
        end

        def self.description
          I18n.t("usps_shipstation.first_class_mail_large_envelope")
        end
      end
    end
  end
end
