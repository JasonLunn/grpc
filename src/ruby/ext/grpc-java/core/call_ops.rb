module GRPC
  module Core
    module CallOps
      [
        :SEND_INITIAL_METADATA,
        :SEND_MESSAGE,
        :SEND_CLOSE_FROM_CLIENT,
        :SEND_STATUS_FROM_SERVER,
        :RECV_INITIAL_METADATA,
        :RECV_MESSAGE,
        :RECV_STATUS_ON_CLIENT,
        :RECV_CLOSE_ON_SERVER,
      ].each_with_index do | key, index |
        const_set key, index
      end
    end
  end
end
