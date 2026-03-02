module Spree
  module Calculator::Shipping
    module FedexRest
      class InternationalFirst < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.intl_first")
        end
      end
    end
  end
end
