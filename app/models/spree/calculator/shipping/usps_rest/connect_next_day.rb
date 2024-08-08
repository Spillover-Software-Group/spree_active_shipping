module Spree
  module Calculator::Shipping
    module UspsRest
      class ConnectNextDay < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "USPS_CONNECT_NEXT_DAY"
        end

        def self.description
          I18n.t("usps_rest.connect_next_day")
        end
      end
    end
  end
end
