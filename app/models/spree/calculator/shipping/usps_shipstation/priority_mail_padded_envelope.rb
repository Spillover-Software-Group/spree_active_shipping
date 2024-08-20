module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailPaddedEnvelope < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_PADDED_ENVELOPE"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_padded_envelope")
        end
      end
    end
  end
end
