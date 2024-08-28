module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailExpressLegalFlat < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_EXPRESS_LEGAL_ENVELOPE"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_express_legal_flat")
        end
      end
    end
  end
end
