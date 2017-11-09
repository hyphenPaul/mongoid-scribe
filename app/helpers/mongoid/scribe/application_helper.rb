module Mongoid
  module Scribe
    module ApplicationHelper
      def view_model_for(model)
        klass = "#{model.class.to_s}ViewModel".constantize
        klass.new(model)
      end

      def bool_to_human(bool)
        return 'yes' if bool
        'no'
      end
    end
  end
end
