class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all

		respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant }
    end
	end

  def show
  	@restaurant = Restaurant.find(params[:id])

    # if current_user
    #   @restaurant = @restaurant.reviews.build
    # end

  	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant }
    end
  end 
end
