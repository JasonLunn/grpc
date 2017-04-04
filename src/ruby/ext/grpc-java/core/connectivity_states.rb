module GRPC
  module Core
    class ConnectivityStates
      IDLE = 0
      CONNECTING = 1
      READY = 2
      TRANSIENT_FAILURE = 3
      FATAL_FAILURE = 4
    end
  end
end
