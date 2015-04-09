require 'fog/core/model'

module Fog
  module Rackspace
    class CloudKeep
      class Order < Fog::Model
        attribute :type
        attribute :meta
        attribute :order_ref
        attribute :secret_ref
        attribute :status
        attribute :error_status_code
        attribute :error_reason
      end
    end
  end
end
