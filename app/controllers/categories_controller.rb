class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])

  	# respond_to do |format|
   #    format.html # show.html.erb
   #    format.json { render json: @category }
   #  end
  end
end
