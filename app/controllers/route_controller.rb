class RouteController < ApplicationController
  def index
    @routes = Route.all
  end

  def new
    @cities = City.all
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to admin_routes_path
    else
      render 'new'
    end
  end

  private
    def route_params
      byebug
      params.require(:route).permit(:source_city_id, :destination_city_id, :distance, :travel_time)
    end
end
