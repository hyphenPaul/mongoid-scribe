module Mongoid
  module Scribe
    class ExplanationsController < ApplicationController
      def index
        @explanations = Explanation.all
      end
    end
  end
end
