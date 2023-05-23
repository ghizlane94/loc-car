class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    if params[:q].present?
      @cars = Car.where("LOWER(brand) LIKE ?", "%" + params[:q].downcase + "%")
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @reservation =Reservation.new
    @user = @car.user
  end

  def new
    @car=Car.new
  end
  def create
    @car=Car.new(car_params)
    @car.user=current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end

  end
  def edit
    @car =Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit
    end
  end
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, notice: "Car has been destroyed!"
  end
  private
  def car_params
    params.require(:car).permit(:brand, :description, :price, :color, :mileage, :url_image)
  end
end
