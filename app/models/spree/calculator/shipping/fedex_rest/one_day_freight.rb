module Spree
  module Calculator::Shipping
    module FedexRest
      class OneDayFreight < Spree::Calculator::Shipping::FedexRest::Base
        def self.mail_class
          "ONE_DAY_FREIGHT"
        end

        def self.description
          I18n.t("fedex_rest.one_day_freight")
        end
      end
    end
  end
end
