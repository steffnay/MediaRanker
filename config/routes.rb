Rails.application.routes.draw do
  get 'users', to: 'users#index', as: 'users'

  get 'users/:id',to: 'users#show', as: 'user'

  resources :votes
  resources :sessions
  resources :publications

  root 'mains#index', as: 'main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
