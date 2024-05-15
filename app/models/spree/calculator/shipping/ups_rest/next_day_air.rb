module Spree
  module Calculator::Shipping
    module UpsRest
      class NextDayAir < Spree::Calculator::Shipping::UpsRest::Base
        def self.description
          I18n.t("ups_rest.next_day_air")
        end
      end
    end
  end
end
