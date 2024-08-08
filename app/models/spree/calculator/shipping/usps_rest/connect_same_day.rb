module Spree
  module Calculator::Shipping
    module UspsRest
      class ConnectSameDay < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_CONNECT_SAME_DAY"
        end

        def self.description
          I18n.t("usps_rest.connect_same_day")
        end
      end
    end
  end
end
