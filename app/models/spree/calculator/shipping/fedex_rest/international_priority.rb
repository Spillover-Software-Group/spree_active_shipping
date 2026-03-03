module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalPriority < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY"
        end

        def self.description
          I18n.t("fedex_rest.intl_priority")
        end
      end
    end
  end
end
