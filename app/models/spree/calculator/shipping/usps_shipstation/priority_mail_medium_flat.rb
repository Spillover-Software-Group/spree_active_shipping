module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailMediumFlat < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_MEDIUM_FLAT"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_medium_flat")
        end
      end
    end
  end
end
