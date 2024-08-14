module Spree
  module Calculator::Shipping
    module UspsRest
      class FirstClassPackageService < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "FIRST-CLASS_PACKAGE_SERVICE"
        end

        def self.description
          I18n.t("usps_rest.first_class_package_service")
        end
      end
    end
  end
end
