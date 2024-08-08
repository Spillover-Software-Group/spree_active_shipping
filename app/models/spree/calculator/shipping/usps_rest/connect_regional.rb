module Spree
  module Calculator::Shipping
    module UspsRest
      class ConnectRegional < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_CONNECT_REGIONAL"
        end

        def self.description
          I18n.t("usps_rest.connect_regional")
        end
      end
    end
  end
end
