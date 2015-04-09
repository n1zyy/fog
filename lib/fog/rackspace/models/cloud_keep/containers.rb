require 'fog/core/collection'
require 'fog/rackspace/models/cloud_keep/container'

module Fog
  module Rackspace
    class CloudKeep
      class Containers < Fog::Collection
        model Fog::Rackspace::CloudKeep::Container

        def all
          data = service.list_containers.body['containers']
          load(data)
        end

        def get(container_id)
          data = service.get_container(container_id).body['container']
          new(data)
        rescue Fog::Rackspace::CloudKeep::NotFound
          nil
        end
      end
    end
  end
end
