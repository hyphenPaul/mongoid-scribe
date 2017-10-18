Mongoid::Scribe::Engine.routes.draw do
  get '/explanations', to: 'explanations#index'
end
