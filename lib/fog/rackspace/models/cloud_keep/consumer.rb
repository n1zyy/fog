require 'fog/core/model'

module Fog
  module Rackspace
    class CloudKeep
      class Consumer < Fog::Model
        attribute :name
        attribute :url
      end
    end
  end
end
