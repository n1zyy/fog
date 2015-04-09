require 'fog/core/model'

module Fog
  module Rackspace
    class CloudKeep
      class Container < Fog::Model
        attribute :name
        attribute :secret_refs
        attribute :container_ref
        attribute :type
      end
    end
  end
end
