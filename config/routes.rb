Rails.application.routes.draw do
  resources :comments
  resources :flats
  devise_for :users
  root :to => 'home#index'
  resources :home, path_names: { edit: 'user' }
end
