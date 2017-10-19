module Mongoid
  module Scribe
    class ExplanationsController < ApplicationController
      def index
        # need pagination
        @explanations = Explanation.all
      end

      def show
        @explanation = Explanation.find(params[:id])
      end

      def klass
        # aggregate stats for the explanation
      end

      def path
        # aggregate stats for path
      end
    end
  end
end
