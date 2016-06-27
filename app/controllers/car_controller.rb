class CarController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to admin_cars_path
    else
      render 'new'
    end
  end

  private

    def car_params
      params.require(:car).permit(:name, :seats)
    end
end
