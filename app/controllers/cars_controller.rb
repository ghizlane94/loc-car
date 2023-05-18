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
    @user = current_user
    @car = Car.find(params[:id])
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
  private
  def car_params
    params.require(:car).permit(:brand, :description, :price, :color, :mileage, :url_image)
  end
end
