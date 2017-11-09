Mongoid::Contextual::Mongo.send(:prepend,
  Mongoid::Scribe::Contextual::Mongo
)

ApplicationController.send(:before_action, -> { Thread.current[:request] = request })
