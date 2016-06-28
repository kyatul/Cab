class CarController < AdminController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:success] = "Car added successfully"
      redirect_to admin_cars_path
    else
      render 'new'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    flash[:info] = "Car deleted successfully"

    redirect_to admin_cars_path
  end

  private

    def car_params
      params.require(:car).permit(:name, :seats)
    end
end
