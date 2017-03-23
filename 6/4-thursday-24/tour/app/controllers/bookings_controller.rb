class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

    # render "index"
  end

  def new
    render "new" # If your view name matches your action name it will be looked up by default.
  end

  def create
    Booking.create(booking_params)

    redirect_to "/bookings"
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to "/bookings"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to "/bookings"
  end

  private def booking_params
    params.require("booking").permit(
      "customer_name",
      "destination",
      "start_at",
      "end_at"
    )
  end
end
