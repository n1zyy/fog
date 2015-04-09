require 'fog/core/model'

module Fog
  module Rackspace
    class CloudKeep
      class Secret < Fog::Model
        attribute :name
        attribute :expiration
        attribute :algorithm
        attribute :bit_length
        attribute :mode
        attribute :payload
        attribute :payload_content_type
        attribute :payload_content_encoding
        attribute :secret_type
      end
    end
  end
end
