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

          rate = rates_result[self.class.mail_class]

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

        def retrieve_rates(origin, destination, shipment_packages)
          raise "the shipment pakcage #{shipment_packages}".inspect
          begin
            response = carrier.find_rates(origin, destination, shipment_packages)
            # turn this beastly array into a nice little hash
            rates = response.rates.collect do |rate|
              next unless rate

              service_code = rate.service_code
              [service_code, rate.price]
            end
            rate_hash = Hash[*rates.flatten]
            return rate_hash
          rescue ::ActiveShipping::Error => e

            if e.class == ::ActiveShipping::ResponseError && e.response.is_a?(::ActiveShipping::Response)
              params = e.response.params
              if params.has_key?("Response") && params["Response"].has_key?("Error") && params["Response"]["Error"].has_key?("ErrorDescription")
                message = params["Response"]["Error"]["ErrorDescription"]
              # Canada Post specific error message
              elsif params.has_key?("eparcel") && params["eparcel"].has_key?("error") && params["eparcel"]["error"].has_key?("statusMessage")
                message = e.response.params["eparcel"]["error"]["statusMessage"]
              else
                message = e.message
              end
            else
              message = e.message
            end

            error = Spree::ShippingError.new("#{I18n.t(:shipping_error)}: #{message}")
            Rails.cache.write @cache_key, error #write error to cache to prevent constant re-lookups
            raise error
          end
        end
      end
    end
  end
end
