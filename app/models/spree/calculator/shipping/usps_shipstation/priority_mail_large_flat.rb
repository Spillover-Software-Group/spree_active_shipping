module Spree
  module Calculator::Shipping
    module UspsShipstation
      class PriorityMailLargeFlat < Spree::Calculator::Shipping::UspsShipstation::Base
        def self.mail_class
          "USPS_PRIORITY_MAIL_LARGE_FLAT"
        end

        def self.description
          I18n.t("usps_shipstation.priority_mail_large_flat")
        end
      end
    end
  end
end
