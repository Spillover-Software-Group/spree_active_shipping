module Spree
  module Calculator::Shipping
    module Fedex
      class Ground < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "GROUND"
        end

        def self.description
          I18n.t("fedex.ground")
        end
      end
    end
  end
end
