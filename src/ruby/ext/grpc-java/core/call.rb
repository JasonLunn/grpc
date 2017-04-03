module GRPC
  module Core
    class Call
      attr_accessor :metadata, :status
      def initialize *args
      
      end
      def set_credentials! *args
      
      end
      def metadata= metadata
        raise TypeError.new "bad metadata: got:<#{metadata.class}> want: <Hash>" unless metadata.nil? or metadata.is_a? Hash
        @metadata = metadata
      end
      def status= status
        raise TypeError.new "bad status: got:<#{status.class}> want: <Struct::Status>" unless status.nil? or status.is_a? Struct::Status
        @status = status
      end
      def run_batch tag, timeout, ops
        raise TypeError.new 'call#run_batch: ops hash should be a hash' unless ops.is_a? Hash
      
      end
    end
  end
end
