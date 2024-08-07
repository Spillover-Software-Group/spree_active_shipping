module Spree
  module Calculator::Shipping
    module UspsRest
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        SERVICE_CODE_PREFIX ||= {
          international: 'intl',
          domestic: 'dom'
        }

        def compute_package(package)
          order = package.order
          stock_location = package.stock_location

          origin = build_location(stock_location)
          destination = build_location(order.ship_address)

          rates_result = retrieve_rates_from_cache(package, origin, destination)

          return nil if rates_result.kind_of?(Spree::ShippingError)
          return nil if rates_result.empty?
          # rate = rates_result[self.class.service_code]
          rate = rates_result[self.class.description]

          # raise "rates_result: #{rates_result} / rate: #{rate} and self: #{self} and class: #{self.class} class.service_code: #{self.class.service_code}".inspect

          return nil unless rate
          rate = rate.to_f + (Spree::ActiveShipping::Config[:handling_fee].to_f || 0.0)

          # divide by 100 since active_shipping rates are expressed as cents
          
          return rate/100.0
        end

        def carrier
          ::ActiveShipping::USPSRest.new(
            client_id: Spree::ActiveShipping::Config[:usps_client_id],
            client_secret: Spree::ActiveShipping::Config[:usps_client_secret],
            access_token: Spree::ActiveShipping::Config[:usps_access_token],
          )
        end
      end
    end
  end
end
