SeatYourself::Application.routes.draw do


  # get "location/show"
  # get "location/index"

  resources :user
  resources :sessions, :only => [:new, :create, :destroy]
  resources :restaurants do
  	resources :reservations, :except => [:index]
  end
  
  # nest reservations in restaurants??
  

  root :to => 'restaurants#index'
end
