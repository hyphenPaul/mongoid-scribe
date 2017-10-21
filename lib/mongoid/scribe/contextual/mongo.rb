module Mongoid
  module Scribe
    module Contextual
      module Mongo
        def initialize(criteria)
          super
          record_explanation
        end

        private

        def record_explanation
          Explanation.create(
            explanation: view.explain.to_hash,
            klass: @klass,
            selector: @criteria.selector.to_h,
            cached: cached?
          )
        end
      end
    end
  end
end
