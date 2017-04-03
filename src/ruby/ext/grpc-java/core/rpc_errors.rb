module GRPC
  module Core
    module RpcErrors
      {
        OK: 0,
        ERROR: 1,
        NOT_ON_SERVER: 2,
        NOT_ON_CLIENT: 3,
        ALREADY_ACCEPTED: 4,
        ALREADY_INVOKED: 5,
        NOT_INVOKED: 6,
        ALREADY_FINISHED: 7,
        TOO_MANY_OPERATIONS: 8,
        INVALID_FLAGS: 9,
        ErrorMessages: {
          0 => 'ok',
          1 => 'unknown error',
          2 => 'not available on a server',
          3 => 'not available on a client',
          4 => 'call is already accepted',
          5 => 'call is already invoked',
          6 => 'call is not yet invoked',
          7 => 'call is already finished',
          8 => 'outstanding read or write present',
          9 => 'a bad flag was given'
        }
      }.each_pair do | key, value |
        const_set key, value
      end
    end
  end
end
