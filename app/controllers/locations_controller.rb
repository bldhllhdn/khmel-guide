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

  def new_comment
      @comment = nil
  end

  def create_comment
      @location = Location.find(params[:id])
      @comment = @location.comments.new(comment_params)
      @comment.user = current_user
      @comment.save
      redirect_to @location
  end

  private

  def location_params
    params.require(:location).permit(:title, :address, :category, :description)
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
