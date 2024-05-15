module Spree
  module Calculator::Shipping
    module UpsRest
      class WorldwideExpedited < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.worldwide_expedited")
        end
      end
    end
  end
end
