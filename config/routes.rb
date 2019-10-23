Rails.application.routes.draw do
  resources :comments
  resources :destinations, only: [:index, :show] do 
    resources :hacks, except: [:index]
  end
  resources :users, only: [:show, :create, :edit, :update, :destroy] 
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # get 'welcome', to: 

end
