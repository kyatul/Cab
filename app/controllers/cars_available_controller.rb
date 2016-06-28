class CarsAvailableController < AdminController
  def index
    @cars_available = CarsAvailable.all.order(:city_id).includes(:city)
  end

  def new
    @cities = City.all
    @cars = Car.all

    @car_available = CarsAvailable.new
  end

  def create
    @car_available = CarsAvailable.new(car_availability_params)

    if @car_available.save
      flash[:success] = "Car Availability added successfully"
      redirect_to admin_cars_available_path
    else
      @cities = City.all
      @cars = Car.all
      
      render 'new'
    end
  end

  def destroy
    @car_available = CarsAvailable.find(params[:id])
    @car_available.destroy
    flash[:info] = "Car Availability deleted successfully"

    redirect_to admin_cars_available_path
  end

  private
    def car_availability_params
      params.require(:car_available).permit(:city_id, :car_id, :rate_per_km)
    end
end
