class TripController < ApplicationController
  def index
    @cities = City.find(source_city_ids)
  end

  def search
    @cars_available = CarsAvailable.where(city_id: params[:trip][:source_city_id])
  end

  private
    def source_city_ids
      Route.select(:source_city_id).distinct.pluck(:source_city_id)
    end
end
