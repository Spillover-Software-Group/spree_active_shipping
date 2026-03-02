module Spree
  module Calculator::Shipping
    module FedexRest
      class Saver < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.saver")
        end
      end
    end
  end
end
