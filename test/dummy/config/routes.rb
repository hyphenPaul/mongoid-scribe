Rails.application.routes.draw do
  mount Mongoid::Scribe::Engine => "/mongoid-scribe"
  get '/test', to: 'test#show'
end
