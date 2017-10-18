module Mongoid
  module Scribe
    class Engine < ::Rails::Engine
      isolate_namespace Mongoid::Scribe
    end
  end
end
