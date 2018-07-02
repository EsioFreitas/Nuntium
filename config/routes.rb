Rails.application.routes.draw do
  get 'perfil/index'
  devise_for :users
  resources :tags
  resources :articles
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
