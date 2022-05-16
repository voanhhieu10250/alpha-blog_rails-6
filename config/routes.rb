Rails.application.routes.draw do
  root 'pages#home'
  resources :articles # , only: %i[show index new create edit update]
  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  resources :users, except: %i[new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
