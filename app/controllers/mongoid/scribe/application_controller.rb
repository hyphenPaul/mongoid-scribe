module Mongoid
  module Scribe
    class ApplicationController < ActionController::Base
      helper Mongoid::Scribe::Engine.helpers

      protect_from_forgery with: :exception
      before_action :store_request_in_thread

      private

      def store_request_in_thread
        Thread.current[:request] = request
      end
    end
  end
end
