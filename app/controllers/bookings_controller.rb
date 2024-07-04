class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :destroy]
  before_action :set_car, only: [:new, :create]

  # GET /bookings
  def index
    @bookings = current_user.bookings
  end

  # GET /bookings/:id
  def show
  end

  # GET /cars/:car_id/bookings/new
  def new
    @booking = @car.bookings.build
  end

  # POST /cars/:car_id/bookings
  def create
    @booking = @car.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  # DELETE /bookings/:id
  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = current_user.bookings.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
