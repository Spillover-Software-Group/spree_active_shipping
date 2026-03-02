module Spree
  module Calculator::Shipping
    module FedexRest
      class FirstOvernight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.first_overnight")
        end
      end
    end
  end
end
