class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    render :show
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
end
