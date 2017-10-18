module Mongoid
  module Scribe
    module Contextual
      module Mongo
        def first(opts = {})
          result = super
          debugger 
          result
        end
      end
    end
  end
end
