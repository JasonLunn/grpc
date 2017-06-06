module GRPC
  module Core
    class Channel
      SSL_TARGET = :SSL_TARGET
      
      def initialize host, options, credentials
        if credentials.is_a? Symbol and credentials != :this_channel_is_insecure
          raise TypeError.new 'bad creds symbol, want :this_channel_is_insecure'
        end
        if options.is_a? Hash
          raise TypeError.new 'Invalid key' unless options.keys.map( &:class ).all? { | clazz | [ String, Symbol ].include? clazz }
          raise TypeError.new 'Invalid value' unless options.values.map( &:class ).all? { | clazz | [ String, Symbol, Fixnum ].include? clazz }
        end
        @connectivity_state = ConnectivityStates::IDLE
        @closed = false
      end
      def create_call *args
        raise 'Already closed' if @closed
        Call.new
      end
      def destroy
      
      end
      def close *args
        @closed = true
      end
      def connectivity_state *args
        @connectivity_state
      end
      def watch_connectivity_state *args
      
      end
      def target
        ''
      end
    end
  end
end
