Backbone2::Application.routes.draw do
  root :to => 'houses#index'
  resources :houses

  #resources :images, only: [:index]
  devise_for :users, :controllers => {:registrations => "registrations",:sessions => "sessions"}

end
