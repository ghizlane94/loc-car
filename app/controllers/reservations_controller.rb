class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @sum = 0 
  end
  def show
    @reservation = Reservation.find(params[:id])
    @start_time = @reservation.start_time
    @end_time = @reservation.end_time
    @car = @reservation.car
    @reservation.user = current_user
    @duration = (@end_time.to_date - @start_time.to_date).to_i
  end

  def new
    @reservation = Reservation.new
    # @moto = Moto.find(params[:moto_id])
    # @reservation = Reservation.new(moto_id: @moto.id)
    # @reservations = @moto.reservations.order(:start_time)
  end

  def create
    @reservation = Reservation.new(
      start_time: params[:reservation][:start_time],
      end_time: params[:reservation][:end_time],
      car_id: params[:car_id]
    )
    @reservation.user = current_user
    redirect_to reservation_path(@reservation) if @reservation.save!
  end
  # this code dosent work
  # def new
  #   @reservation = Reservation.new
  #   @car = Car.find(params[:car_id])
  # end
  # def create
  #   @car = Car.find(params[:car_id])
  #   @reservation.user = current_user
  #   @reservation = Reservation.new(reservation_params)
  #   if @reservation.save
  #     redirect_to reservation_path(@reservation)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
  # private
  # def reservation_params
  #   params.require(:reservation).permit(:start_time, :end_time, :car_id)
  # end
end
