Rails.application.routes.draw do
  resources :ethnicities
  resources :tags
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :dishes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
