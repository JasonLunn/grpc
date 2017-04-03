module GRPC
  module Core
    class ChannelCredentials
      @@default_roots_pem = nil
      def self.set_default_roots_pem default_roots_pem
        @@default_roots_pem = default_roots_pem
      end
    end
  end
end
