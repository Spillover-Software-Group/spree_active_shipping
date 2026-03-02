module Spree
  module Calculator::Shipping
    module FedexRest
      class TwoDayFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.two_day_freight")
        end
      end
    end
  end
end
