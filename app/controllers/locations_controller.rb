class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

  def new
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to @location
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if(@location.update(location_params))
      redirect_to @location
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to @location
  end

  private def location_params
    params.require(:location).permit(:title, :address, :category, :description)
  end
end
