require 'fog/core/collection'
require 'fog/rackspace/models/cloud_keep/order'

module Fog
  module Rackspace
    class CloudKeep
      class Orders < Fog::Collection
        model Fog::Rackspace::CloudKeep::Order

        def all
          data = service.list_orders.body['orders']
          load(data)
        end

        def get(order_id)
          data = service.get_order(order_id).body['order']
          new(data)
        rescue Fog::Rackspace::CloudKeep::NotFound
          nil
        end
      end
    end
  end
end
