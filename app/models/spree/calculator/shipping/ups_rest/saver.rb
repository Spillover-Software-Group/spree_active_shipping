module Spree
  module Calculator::Shipping
    module UpsRest
      class Saver < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.saver")
        end
      end
    end
  end
end
