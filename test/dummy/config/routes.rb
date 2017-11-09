Rails.application.routes.draw do
  resources :movies

  get 'widget_foo/:foo', to: 'widgets#show_by_foo', as: 'widget_foo'
  get 'widget_bar/:bar', to: 'widgets#show_by_bar', as: 'widget_bar'

  mount Mongoid::Scribe::Engine => "/mongoid-scribe", as: :mongoid_scribe
end
