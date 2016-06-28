class CityController < AdminController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)

    if @city.save
      flash[:success] = "City added successfully"
      redirect_to admin_cities_path
    else
      render 'new'
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    flash[:info] = "City deleted successfully"

    redirect_to admin_cities_path
  end

  private

    def city_params
      params.require(:city).permit(:name)
    end
end
