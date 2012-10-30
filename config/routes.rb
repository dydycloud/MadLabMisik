Madlab::Application.routes.draw do

  get "static_pages/about"

  get "static_pages/contact"

  resources :posts

  resources :home

  root :to => 'home#index'
end
