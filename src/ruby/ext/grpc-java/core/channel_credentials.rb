module GRPC
  module Core
    class ChannelCredentials
      def initialize *args
      
      end
      def compose *credentials
        raise TypeError.new 'Expected CallCredentials' unless credentials.all? { | credential | credential.is_a? CallCredentials }
      end
      @@default_roots_pem = nil
      def self.set_default_roots_pem default_roots_pem
        @@default_roots_pem = default_roots_pem
      end
    end
  end
end
