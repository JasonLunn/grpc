require 'core/time_spec'
module GRPC
  module Core
    module TimeConsts
      INFINITE_FUTURE = TimeSpec.new java.lang.Long::MAX_VALUE
      INFINITE_PAST = TimeSpec.new java.lang.Long::MIN_VALUE
      ZERO = TimeSpec.new 0
    end
  end
end
