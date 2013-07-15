class ReservationsController < ApplicationController
	before_filter :ensure_logged_in
	before_filter :load_restaurant

  def new
  	@reservation = Reservation.new
  end

  def create
  	@reservation = @restaurant.reservations.build(params[:reservation])
  	@reservation.user_id = current_user.id
  	@reservation.restaurant_id = @restaurant.id
  	if @reservation.save
  		redirect_to @restaurant, notice: "Reservation Saved"
  	else 
  		render "new"
  	end
  end

  

  def destroy
  end

  private

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end
