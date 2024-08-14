module Spree
  module Calculator::Shipping
    module UspsRest
      class BoundPrintedMatter < Spree::Calculator::Shipping::UspsRest::Base
        def self.mail_class
          "BOUND_PRINTED_MATTER"
        end

        def self.description
          I18n.t("usps_rest.bound_printed_matter")
        end
      end
    end
  end
end
