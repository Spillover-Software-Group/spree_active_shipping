module Spree
  module Calculator::Shipping
    module UpsRest
      class NextDayAirSaver < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.next_day_air_saver")
        end
      end
    end
  end
end
