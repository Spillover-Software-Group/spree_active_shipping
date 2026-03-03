module Spree
  module Calculator::Shipping
    module FedexRest
      class PriorityOvernight < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "PRIORITY_OVERNIGHT"
        end

        def self.description
          I18n.t("fedex_rest.priority_overnight")
        end
      end
    end
  end
end
