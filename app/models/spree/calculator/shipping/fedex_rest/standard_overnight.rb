module Spree
  module Calculator::Shipping
    module FedexRest
      class StandardOvernight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.standard_overnight")
        end
      end
    end
  end
end
