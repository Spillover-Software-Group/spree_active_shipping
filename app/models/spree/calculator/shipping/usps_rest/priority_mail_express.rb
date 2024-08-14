module Spree
  module Calculator::Shipping
    module UspsRest
      class PriorityMailExpress < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "PRIORITY_MAIL_EXPRESS"
        end

        def self.description
          I18n.t("usps_rest.priority_mail_express")
        end
      end
    end
  end
end
