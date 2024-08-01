module Spree
  module Calculator::Shipping
    module UspsRest
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier
          ::ActiveShipping::USPSRest.new(
            client_id: Spree::ActiveShipping::Config[:usps_client_id],
            client_secret: Spree::ActiveShipping::Config[:usps_client_secret],
            access_token: Spree::ActiveShipping::Config[:usps_access_token],
          )
        end

        protected
        
        def max_weight_for_country(country)
          1120  # 70 lbs
        end
      end
    end
  end
end
