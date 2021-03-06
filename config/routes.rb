Rails.application.routes.draw do
  get 'users', to: 'users#index', as: 'users'
  get 'users/:id',to: 'users#show', as: 'user'
  get 'login', to: 'sessions#new', as: 'login_form'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :votes

  resources :publications do
    resources :votes, only: [:new, :create, :index]
  end

  root 'mains#index', as: 'main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
