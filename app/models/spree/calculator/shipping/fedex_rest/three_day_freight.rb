module Spree
  module Calculator::Shipping
    module FedexRest
      class ThreeDayFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.three_day_freight")
        end
      end
    end
  end
end
