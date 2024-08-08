module Spree
  module Calculator::Shipping
    module UspsRest
      class ConnectLocal < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_CONNECT_LOCAL"
        end

        def self.description
          I18n.t("usps_rest.connect_local")
        end
      end
    end
  end
end
