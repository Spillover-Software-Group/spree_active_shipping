module Spree
  module Calculator::Shipping
    module Fedex
      class ExpressSaver < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "EXPRESS_SAVER"
        end

        def self.description
          I18n.t("fedex.express_saver")
        end
      end
    end
  end
end
