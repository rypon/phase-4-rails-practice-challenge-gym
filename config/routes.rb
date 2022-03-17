Rails.application.routes.draw do
  resources :gyms, only: [:index, :show, :destroy]
  resources :memberships , only: [:index, :create]
  resources :clients, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
