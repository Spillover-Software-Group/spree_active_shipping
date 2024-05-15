module Spree
  module Calculator::Shipping
    module UpsRest
      class SecondDayAir < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.second_day_air")
        end
      end
    end
  end
end
