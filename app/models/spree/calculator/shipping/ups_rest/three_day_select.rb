module Spree
  module Calculator::Shipping
    module UpsRest
      class ThreeDaySelect < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.three_day_select")
        end
      end
    end
  end
end
