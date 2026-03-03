module Spree
  module Calculator::Shipping
    module Fedex
      class InternationalPriorityFreight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "INTERNATIONAL_PRIORITY_FREIGHT"
        end

        def self.description
          I18n.t("fedex.intl_priority_freight")
        end
      end
    end
  end
end
