Rails.application.routes.draw do
  mount Mongoid::Scribe::Engine => "/mongoid-scribe"
end
