require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    robby = Booking.create(customer_name: "Robby Dore")

    get "/bookings"
    # Verify a status code
    assert_response :success

    assert_select "h1", "Bookings"
    assert_select "td", robby.customer_name
  end

  test "should be able to see a form for a new booking" do
    get "/bookings/new"

    assert_response :success
    assert_select "form"
  end
end
