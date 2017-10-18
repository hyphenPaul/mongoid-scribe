module Mongoid
  module Scribe
    class Explanation
      require 'mongoid/scribe/request'

      include Mongoid::Document
      include Mongoid::Scribe::Request

      field :name, type: String
      field :orginal_fullpath, type: String, default: -> { original_fullpath }
    end
  end
end
