module Outliers
  module Exceptions

    class Base < RuntimeError
      attr_accessor :message

      def initialize(message="")
        @message = message
      end
    end

    class ArgumentRequired < Base
    end

    class HandlerError < Base
    end

    class InvalidBucket < Base
    end

    class InvalidArguments < Base
    end

    class NoArgumentRequired < Base
    end

    class UnknownCollection < Base
    end

    class UnknownAccount < Base
    end

    class UnknownVerification < Base
    end

    class UnknownFilter < Base
    end

    class UnknownFilterAction < Base
    end

    class UnknownProvider < Base
    end

    class UnsupportedRegion < Base
    end

    class TargetNotFound < Base
    end

  end
end
