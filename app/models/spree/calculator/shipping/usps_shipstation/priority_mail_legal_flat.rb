module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailLegalFlat < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_LEGAL_FLAT"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_legal_flat")
        end
      end
    end
  end
end
