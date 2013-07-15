SeatYourself::Application.routes.draw do

  # get "location/show"
  # get "location/index"

  resources :user
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'restaurants#index'
end
