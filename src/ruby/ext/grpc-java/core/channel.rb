module GRPC
  module Core
    class Channel
      def initialize host, *args
      
      end
      def create_call *args
        Call.new
      end
    end
  end
end
