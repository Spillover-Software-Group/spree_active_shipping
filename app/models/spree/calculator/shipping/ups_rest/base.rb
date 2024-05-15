require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module UpsRest
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier
          ::ActiveShipping::UPSRest.new(
            client_id: Spree::ActiveShipping::Config[:ups_client_id],
            client_secret: Spree::ActiveShipping::Config[:ups_client_secret],
            access_token: Spree::ActiveShipping::Config[:ups_access_token],
            refresh_token: Spree::ActiveShipping::Config[:ups_refresh_token],
            test: Spree::ActiveShipping::Config[:test_mode] 
          )
        end

        protected
        # weight limit in ounces http://www.ups.com/content/us/en/resources/prepare/oversize.html
        def max_weight_for_country(country)
          2400    # 150 lbs
        end
      end
    end
  end
end
