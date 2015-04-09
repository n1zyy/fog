module Fog
  module Rackspace
    class CloudKeep
      class Real
        def list_orders
          request(
            :expects => [200, 203],
            :method => 'GET',
            :path => 'orders'
          )
        end
      end
    end
  end
end
