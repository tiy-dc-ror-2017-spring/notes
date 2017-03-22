class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

    # render "index"
  end

  def new
  end

  def create
    Booking.create(booking_params)

    redirect_to "/bookings"
  end

  private def booking_params
    params.require("booking").permit("customer_name", "destination")
  end
end
