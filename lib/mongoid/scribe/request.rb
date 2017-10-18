module Mongoid
  module Scribe
    module Request
      delegate :original_fullpath, to: :request, allow_nil: true
      
      def request
        Thread.current[:request]
      end
    end
  end
end
