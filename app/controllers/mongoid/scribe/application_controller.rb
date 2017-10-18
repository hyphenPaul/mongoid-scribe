module Mongoid
  module Scribe
    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception
      before_action :store_request_in_thread

      private

      def store_request_in_thread
        Thread.current[:request] = request
      end
    end
  end
end
