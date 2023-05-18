class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def show
    @reservation = Reservation.find(params[:id])
    @start_time = @reservation.start_time
    @end_time = @reservation.end_time
    @car = @reservation.car
  end
  def new
    @reservation = Reservation.new
    @car = Car.find(params[:car_id])
  end
  def create
    @car = Car.find(params[:car_id])
    @reservation.user = current_user
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time, :car_id)
  end
end
