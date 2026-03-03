module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalPriorityFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY_FREIGHT"
        end

        def self.description
          I18n.t("fedex_rest.intl_priority_freight")
        end
      end
    end
  end
end
