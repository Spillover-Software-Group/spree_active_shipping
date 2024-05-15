module Spree
  module Calculator::Shipping
    module UpsRest
      class Standard < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.standard")
        end
      end
    end
  end
end
