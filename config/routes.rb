Rails.application.routes.draw do
  root 'pages#home'
  resources :articles # , only: %i[show index new create edit update]
  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  resources :users, except: %i[new]
end
