class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

    # render "index"
  end

  def new
    @booking = Booking.new
    render "new" # If your view name matches your action name it will be looked up by default.
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      session[:success] = "Booking created successfully!"

      redirect_to bookings_path
    else
      session[:error] = "Booking could not be saved!"

      render "new"
    end
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
      "bob",
      "start_at",
      "end_at"
    )
  end
end
