Rails.application.routes.draw do
  resources :destinations, only: [:index, :show] do 
    resources :hacks, shallow: true do
      resources :comments, shallow: true
      resources :likes, shallow: true
    end  
  end
  resources :users, only: [:show, :create, :edit, :update, :destroy] do
    resources :follows, shallow: true
  end
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'welcome#welcome'

end
