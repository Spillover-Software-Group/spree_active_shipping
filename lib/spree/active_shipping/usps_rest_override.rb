module Spree
  module ActiveShipping
    module UspsRestOverride
      def self.included(base)
        base.class_eval do
          def find_rates(origin, destination, packages, options={})
            # origin, destination = upsified_location(origin), upsified_location(destination)
            # options = @options.merge(options)
            # packages = Array(packages)
            # rate_request = build_rate_request(origin, destination, packages, options)
            # response = commit(:rates, save_request(rate_request), (options[:test] || false))
            # parse_rate_response(origin, destination, packages, response, options)
          end
        end
      end
    end
  end
end
