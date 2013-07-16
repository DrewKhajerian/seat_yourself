class ReservationsController < ApplicationController
	before_filter :ensure_logged_in
	before_filter :load_restaurant

  def new
  	@reservation = Reservation.new
    @TIMES = ["11am-Noon","12-1pm","1-2pm","2-3pm","3-4pm","4-5pm","5-6pm","6-7pm","7-8pm"]
    @SIZE = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
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
