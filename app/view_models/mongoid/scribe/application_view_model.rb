module Mongoid
  module Scribe
    class ApplicationViewModel
      attr_reader :model

      def initialize(model)
        @model = model
      end

      private

      def method_missing(m, *args, &block)
        model.send(m, *args, &block)
      end
    end
  end
end
