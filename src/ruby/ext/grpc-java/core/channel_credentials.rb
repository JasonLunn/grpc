module GRPC
  module Core
    class ChannelCredentials
      def initialize *args
      
      end
      @@default_roots_pem = nil
      def self.set_default_roots_pem default_roots_pem
        @@default_roots_pem = default_roots_pem
      end
    end
  end
end
