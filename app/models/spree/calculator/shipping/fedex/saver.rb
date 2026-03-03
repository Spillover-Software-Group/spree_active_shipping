module Spree
  module Calculator::Shipping
    module Fedex
      class Saver < Spree::Calculator::Shipping::Fedex::Base
        def self.mail_class
          "SAVER"
        end

        def self.description
          I18n.t("fedex.saver")
        end
      end
    end
  end
end
