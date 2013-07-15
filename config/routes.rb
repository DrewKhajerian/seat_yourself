SeatYourself::Application.routes.draw do

  # get "location/show"
  # get "location/index"

  resources :user
  resources :sessions, :only => [:new, :create, :destroy]
  resources :restaurants
  
  # nest reservations in restaurants??
  # resources :reservations

  root :to => 'restaurants#index'
end
