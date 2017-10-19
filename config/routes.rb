Mongoid::Scribe::Engine.routes.draw do
  resources :explanations, only: [:index, :show]
end
