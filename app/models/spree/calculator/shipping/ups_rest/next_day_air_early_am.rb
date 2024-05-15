module Spree
  module Calculator::Shipping
    module UpsRest
      class NextDayAirEarlyAm < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.next_day_air_early_am")
        end
      end
    end
  end
end
