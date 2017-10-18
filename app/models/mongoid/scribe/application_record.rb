module Mongoid
  module Scribe
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
