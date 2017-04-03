# java_import '.Status'
module GRPC
  module Core
    module StatusCodes
      # Reflection magic to iterate over all the entries of the Status.Code enum and create a corresponding constant
      Java::io::grpc::Status::Code.values.each do | code |
        const_set code.to_s.upcase, code.value
      end
    end
  end
end
