Rails.application.routes.draw do
  resources :clients
  resources :products
  resources :currencies
  resources :taxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
