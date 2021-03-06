Rails.application.routes.draw do
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :weights, only: [:index, :create]
      resources :glucoses, only: [:index, :create]
      resources :meals, only: [:index,:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
