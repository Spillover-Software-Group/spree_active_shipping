module Spree
  module Calculator::Shipping
    module FedexRest
      class Ground < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "GROUND"
        end

        def self.description
          I18n.t("fedex_rest.ground")
        end
      end
    end
  end
end
