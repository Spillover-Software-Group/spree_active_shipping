module Spree
  module Calculator::Shipping
    module UspsRest
      class ConnectMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_CONNECT_MAIL"
        end

        def self.description
          I18n.t("usps_rest.connect_mail")
        end
      end
    end
  end
end
