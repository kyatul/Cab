class TripController < ApplicationController
  def index
    @cities = City.all
  end

  def search
    @cars = Car.all
  end
end
