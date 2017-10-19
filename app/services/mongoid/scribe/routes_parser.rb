module Mongoid
  module Scribe
    class RoutesParser
      class << self
        def path_matches?(path)
          return true if all_paths.include?(path)

          path_parts = path.split('/')
         
          all_paths.any? do |engine_path|
            parts = path_parts.clone
            engine_path_parts = engine_path.split('/')

            # get the index for all route variables
            variable_index = engine_path_parts.each_with_index.select do |part, index|
              part.match(/^:/)
            end.map(&:last) || []

            # remove all path variables
            variable_index.each do |index|
              parts.delete_at(index)
              engine_path_parts.delete_at(index)
            end

            parts == engine_path_parts
          end
        end

        private

        def all_paths
          @@all_paths ||= engine_paths.map { |path| "#{root_path}#{path}" }
        end

        def engine_paths
          Mongoid::Scribe::Engine.routes.routes.map { |route| path_for_route(route) }
        end

        def root_path
          @@root_path ||= path_for_route(mounted_route)
        end

        def path_for_route(route)
          route.path.spec.to_s.gsub(/\(\.:format\)/, '')
        end 

        def mounted_route
          Rails.application.routes.routes.detect do |route|
            route.app.app == Mongoid::Scribe::Engine
          end
        end
      end
    end
  end
end
