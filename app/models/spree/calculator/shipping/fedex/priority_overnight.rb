module Spree
  module Calculator::Shipping
    module Fedex
      class PriorityOvernight < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "PRIORITY_OVERNIGHT"
        end

        def self.description
          I18n.t("fedex.priority_overnight")
        end
      end
    end
  end
end
