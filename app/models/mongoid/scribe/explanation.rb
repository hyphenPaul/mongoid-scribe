module Mongoid
  module Scribe
    class Explanation
      include Mongoid::Document

      delegate :original_fullpath, to: :request, allow_nil: true

      field :name, type: String
      field :orginal_fullpath, type: String, default: -> { original_fullpath }

      validates :original_fullpath, presence: true
      validate :original_fullpath_whitelist
      
      private

      def request
        Thread.current[:request]
      end

      def path_in_engine_routes
        return unless RoutesParser.path_matches?(original_fullpath)
        errors.add(:original_fullpath, 'must not match mongoid-scribe engine path')
      end
    end
  end
end
