Rails.application.routes.draw do
  # This route sends requests to our naked url to the *cool* action in the *gif* controller.
  root to: 'static_pages#index'

  # I've created a gif controller so I have a page I can secure later.
  # This is optional (as is the root to: above).
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
