Madlab::Application.routes.draw do

  devise_for :users do
	get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get "static_pages/about"

  get "static_pages/contact"

  resources :posts

  resources :home

  root :to => 'home#index'
end
