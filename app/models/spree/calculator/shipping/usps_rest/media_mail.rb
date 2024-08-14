module Spree
  module Calculator::Shipping
    module UspsRest
      class MediaMail < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "MEDIA_MAIL"
        end

        def self.description
          I18n.t("usps_rest.media_mail")
        end
      end
    end
  end
end
