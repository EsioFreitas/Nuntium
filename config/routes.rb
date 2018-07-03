Rails.application.routes.draw do
  get 'perfil/index'
  devise_for :users
  resources :tags
  resources :articles
  root 'home#index'
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
