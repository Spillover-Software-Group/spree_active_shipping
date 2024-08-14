module Spree
  module Calculator::Shipping
    module UspsRest
      class PriorityMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "PRIORITY_MAIL"
        end

        def self.description
          I18n.t("usps_rest.priority_mail")
        end
      end
    end
  end
end
