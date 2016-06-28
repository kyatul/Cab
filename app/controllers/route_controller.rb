class RouteController < AdminController
  def index
    @routes = Route.all.includes(:source_city).includes(:destination_city)
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

  def destroy
    @route = Route.find(params[:id])
    @route.destroy

    redirect_to admin_routes_path
  end

  private
    def route_params
      params.require(:route).permit(:source_city_id, :destination_city_id, :distance, :travel_time)
    end
end
