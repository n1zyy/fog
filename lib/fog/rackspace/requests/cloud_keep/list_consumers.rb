module Fog
  module Rackspace
    class CloudKeep
      class Real
        def list_consumers
          request(
            :expects => [200, 203],
            :method => 'GET',
            :path => 'consumers'
          )
        end
      end
    end
  end
end
