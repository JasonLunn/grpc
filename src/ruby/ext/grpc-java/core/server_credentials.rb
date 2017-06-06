module GRPC
  module Core
    class ServerCredentials
      def initialize root_cert, key_cert_pairs, flag
        @root_cert = root_cert
        raise 'nil key_cert pair' if key_cert_pairs.nil?
        raise 'Expected array' unless key_cert_pairs.is_a? Enumerable
        raise 'Expected hashes' unless key_cert_pairs.all? { | key_cert_pair | key_cert_pair.is_a? Hash }
        raise 'server_key and private_key were nil' if key_cert_pairs.any? { | key_cert_pair |
          key_cert_pair[ :server_key ].nil? and key_cert_pair[ :private_key ].nil?
        }
        raise 'cert_chain was nil' if key_cert_pairs.any? { | key_cert_pair | key_cert_pair[ :cert_chain ].nil?}
        raise 'empty key_cert_pairs' if key_cert_pairs.empty?
        @key_cert_pair = key_cert_pairs
        @flag = flag
      end
    end
  end
end
