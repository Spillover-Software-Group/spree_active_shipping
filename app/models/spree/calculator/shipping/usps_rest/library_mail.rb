module Spree
  module Calculator::Shipping
    module UspsRest
      class LibraryMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "LIBRARY_MAIL"
        end

        def self.description
          I18n.t("usps_rest.library_mail")
        end
      end
    end
  end
end
