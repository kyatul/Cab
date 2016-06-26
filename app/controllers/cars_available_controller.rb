class CarsAvailableController < ApplicationController
  def index
    @cars_available = CarsAvailable.all
  end

  def new
    @cities = City.all
    @cars = Car.all
  end

  def create
    @car_available = CarsAvailable.new(car_availability_params)

    if @car_available.save
      redirect_to admin_cars_available_path
    else
      render 'new'
    end
  end

  private
    def car_availability_params
      params.require(:car_available).permit(:city_id, :car_id, :rate_per_km)
    end
end
