module Spree
  module Calculator::Shipping
    module FedexRest
      class ExpressSaver < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "EXPRESS_SAVER"
        end

        def self.description
          I18n.t("fedex_rest.express_saver")
        end
      end
    end
  end
end
