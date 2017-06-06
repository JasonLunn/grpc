module GRPC
  module Core
    class Call
      attr_accessor :metadata, :status
      def initialize *args
        @metadata = {}
        @message = nil
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
      def run_batch tag, timeout = nil, ops = {}
        raise TypeError.new 'call#run_batch: ops hash should be a hash' unless ops.is_a? Hash
        @message = tag[ CallOps::SEND_MESSAGE ] || @message
        result = Struct::BatchResult.new
        result.send_metadata = true
        result.send_message = true
        result.send_status = true
        result.message = @message
        result
      end
      def call
        self
      end
      def peer
        ''
      end
    end
  end
end
