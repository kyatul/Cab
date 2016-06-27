class TripController < ApplicationController
  def index
    @cities = City.find(source_city_ids)
  end

  def search
    # to be reomved later
    params[:trip][:destination_city_id] = 2
    @route = Route.find_by(source_city_id: params[:trip][:source_city_id],
                           destination_city_id: params[:trip][:destination_city_id])
    @distance = @route.distance
    @travel_time = @route.travel_time
    @cars_available = CarsAvailable.where(city_id: params[:trip][:source_city_id])
  end

  private
    def source_city_ids
      Route.select(:source_city_id).distinct.pluck(:source_city_id)
    end
end
