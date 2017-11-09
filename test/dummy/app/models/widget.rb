class Widget
  include Mongoid::Document
  field :foo, type: String
  field :bar, type: String

  index({ foo: 1 })
end
