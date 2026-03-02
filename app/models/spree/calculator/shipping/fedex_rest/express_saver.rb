module Spree
  module Calculator::Shipping
    module FedexRest
      class ExpressSaver < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.express_saver")
        end
      end
    end
  end
end
