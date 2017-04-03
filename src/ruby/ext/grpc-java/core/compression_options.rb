module GRPC
  module Core
    class CompressionOptions
      def initialize _
      
      end
      def algorithm_enabled?
        false
      end
      def disabled_algorithms
        []
      end
      def default_algorithm
        nil
      end
      def to_channel_arg_hash
        to_hash
        
      end
    end
  end
end
