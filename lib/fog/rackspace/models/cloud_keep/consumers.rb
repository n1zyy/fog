require 'fog/core/collection'
require 'fog/rackspace/models/cloud_keep/consumer'

module Fog
  module Rackspace
    class CloudKeep
      class Consumers < Fog::Collection
        model Fog::Rackspace::CloudKeep::Consumer

        def all
          data = service.list_consumers.body['consumers']
          load(data)
        end

        def get(consumer_id)
          data = service.get_consumer(consumer_id).body['consumer']
          new(data)
        rescue Fog::Rackspace::CloudKeep::NotFound
          nil
        end
      end
    end
  end
end
