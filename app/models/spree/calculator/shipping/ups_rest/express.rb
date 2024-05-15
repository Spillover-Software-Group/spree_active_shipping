module Spree
  module Calculator::Shipping
    module UpsRest
      class Express < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.express")
        end
      end
    end
  end
end
