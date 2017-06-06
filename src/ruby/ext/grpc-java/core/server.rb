module GRPC
  module Core
    class Server
      def initialize options
        if options.is_a? Hash
          raise TypeError.new 'Invalid key' unless options.keys.map( &:class ).all? { | clazz | [ String, Symbol ].include? clazz }
          raise TypeError.new 'Invalid value' unless options.values.map( &:class ).all? { | clazz | [ String, Symbol, Fixnum ].include? clazz }
        end
        @closed = false
      end
      def start
        raise 'Already closed' if @closed
      end
      def request_call *args
        Call.new
      end
      def close deadline = nil
        @closed = true
      end
      def add_http2_port *args
        raise 'Already closed' if @closed
      end
      def destroy
      
      end
    end
  end
end
