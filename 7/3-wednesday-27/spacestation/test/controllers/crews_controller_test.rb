require 'test_helper'

class CrewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew = crews(:one)
  end

  test "should get index" do
    get crews_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_url
    assert_response :success
  end

  test "should create crew" do
    assert_difference('Crew.count') do
      post crews_url, params: { crew: { country_code: @crew.country_code, job_title: @crew.job_title, launch_at: @crew.launch_at, name: @crew.name, station_id: @crew.station_id } }
    end

    assert_redirected_to crew_url(Crew.last)
  end

  test "should show crew" do
    get crew_url(@crew)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_url(@crew)
    assert_response :success
  end

  test "should update crew" do
    patch crew_url(@crew), params: { crew: { country_code: @crew.country_code, job_title: @crew.job_title, launch_at: @crew.launch_at, name: @crew.name, station_id: @crew.station_id } }
    assert_redirected_to crew_url(@crew)
  end

  test "should destroy crew" do
    assert_difference('Crew.count', -1) do
      delete crew_url(@crew)
    end

    assert_redirected_to crews_url
  end
end
