module GRPC
  module Core
    class ServerCredentials
      def initialize root_cert, key_cert_pair, flag
        @root_cert = root_cert
        if key_cert_pair.nil?
          raise 'nil key_cert pair'
        else
          @key_cert_pair = key_cert_pair
        end
        @flag = flag
      end
    end
  end
end
