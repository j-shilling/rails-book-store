class LocationsController < ApplicationController

  before_action :set_location, only: [:edit, :update, :show, :destroy]

  def index
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def new
    @location = Location.new
  end

  def show
  end

  def max
    @location = Location.all.max_by { |l| l.books.count }
    render :show
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to location_path(@location)
    else
      render 'edit'
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end
  
  private

  def location_params
    params.require(:location).permit(:name, :phone_number)
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
