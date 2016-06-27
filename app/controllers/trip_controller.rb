class TripController < ApplicationController
  def index
    @source_cities = City.find(Route.source_city_ids)
    @destination_cities = City.find(Route.destination_city_ids(@source_cities.first))
  end

  def destination_cities
    @cities = City.find(Route.destination_city_ids(params[:source_city_id]))

    respond_to do |format|
      format.js
    end
  end

  def search
    @source_city_id = params[:trip][:source_city_id]
    @destination_city_id = params[:trip][:destination_city_id]
    @travel_date = params[:trip][:travel_date]

    @route = Route.find_by(source_city_id: @source_city_id,
                           destination_city_id: @destination_city_id)

    @cars_available = CarsAvailable.where(city_id: @source_city_id)
                                   .includes(:car)
  end

  private
end
