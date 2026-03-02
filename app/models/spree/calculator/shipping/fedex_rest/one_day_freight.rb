module Spree
  module Calculator::Shipping
    module FedexRest
      class OneDayFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.description
          I18n.t("fedex_rest.one_day_freight")
        end
      end
    end
  end
end
