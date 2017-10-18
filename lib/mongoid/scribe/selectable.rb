module Mongoid
  module Scribe
    module Criteria
      def where(criterion = nil)
        puts 'wow'
        super
      end
    end
  end
end
