module Mongoid
  module Scribe
    class Explanation
      include Mongoid::Document

      delegate :original_fullpath, to: :request, allow_nil: true

      field :path, type: String, default: -> { original_fullpath }
      field :explanation, type: Hash
      field :klass, type: String
      field :selector, type: Hash
      field :cached, type: Boolean

      index({ path: 1 })

      validates :path, presence: true
      validates :explanation, presence: true
      validate :path_in_engine_routes
      
      private

      def request
        Thread.current[:request]
      end

      def path_in_engine_routes
        return unless path && RoutesParser.path_matches?(path)
        errors.add(:path, 'must not match mongoid-scribe engine path')
      end
    end
  end
end
