module Spree
  module Calculator::Shipping
    module FedexRest
      class TwoDay < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "TWO_DAY"
        end

        def self.description
          I18n.t("fedex_rest.two_day")
        end
      end
    end
  end
end
