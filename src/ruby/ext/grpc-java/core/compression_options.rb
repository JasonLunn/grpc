module GRPC
  module Core
    class CompressionOptions
      def initialize options = {}
        @default_algorithm = options[ :default_algorithm ]
        @default_level = options[ :default_level ]
        @disabled_algorithms = options[ :disabled_algorithms ] || []
      end
      def algorithm_enabled? algorithm
        raise TypeError.new "algorithm was #{algorithm.class.name}, expecting Symbol" unless algorithm.is_a? Symbol
        raise TypeError.new "Unsupported alogrithm #{algorithm}" unless [ :identity, :deflate, :gzip ].include? algorithm
        ! @disabled_algorithms.include? algorithm
      end
      def disabled_algorithms
        @disabled_algorithms
      end
      def default_algorithm
        @default_algorithm
      end
      def default_level
        @default_level
      end
      def to_channel_arg_hash
        to_hash
      end
      def to_s
        ''
      end
      def to_hash
        {}
      end
    end
  end
end
