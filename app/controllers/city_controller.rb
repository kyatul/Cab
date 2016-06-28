class CityController < AdminController
  def index
    @cities = City.all
  end

  def new
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to admin_cities_path
    else
      render 'new'
    end
  end

  private

    def city_params
      params.require(:city).permit(:name)
    end
end
