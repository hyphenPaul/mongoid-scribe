Mongoid::Criteria.send(:prepend,
  Mongoid::Scribe::Criteria
)

Mongoid::Contextual::Mongo.send(:prepend,
  Mongoid::Scribe::Contextual::Mongo
)
