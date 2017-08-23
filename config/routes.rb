Rails.application.routes.draw do

  #specified *home* routes
  root to: 'static_pages#index'
  get '/home' => "static_pages#index"

  #session routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  #standard rails routes
  resources :users
  resources :podcasts
  resources :selected_podcasts


  #react API route
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
end
