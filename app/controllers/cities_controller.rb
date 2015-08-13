class CitiesController < ApplicationController
  def show
    if City.find_by_id(params[:id])
     @city = City.find(params[:id]) 
     session[:current_city] = @city.id
    
    render :show
   else
    flash[:error] = "Could not find city."
    redirect_to root_path
    end
  end

  def new
    @city = City.new
    render :new
  end

  def create

  end

  def edit
  end

  def destroy
  end

  def update
  end

  private
    def isCity?
      
    end
end
