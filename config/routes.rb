Rails.application.routes.draw do
  # This route sends requests to our naked url to the *cool* action in the *gif* controller.
  root to: 'static_pages#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.



  get '/home' => "static_pages#index"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'


  resources :users
  resources :podcasts
  resources :selected_podcasts

  namespace :api do
    namespace :v1 do
      resources :podcasts, only: [:index, :show]
    end
  end
end
