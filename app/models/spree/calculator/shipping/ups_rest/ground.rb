module Spree
  module Calculator::Shipping
    module UpsRest
      class Ground < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.ground")
        end
      end
    end
  end
end
