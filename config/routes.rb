Rails.application.routes.draw do
  resources :comments
  resources :flats
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root :to => 'home#index'
  resources :home, path_names: { edit: 'user' }
end
