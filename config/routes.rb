Rails.application.routes.draw do
  post 'register', as: :register, to: 'session#register'

  post 'user_token' => 'user_token#create'

  resources :currencies

  scope '/:tenant_id' do
    resources :clients
    resources :products
    resources :taxes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
