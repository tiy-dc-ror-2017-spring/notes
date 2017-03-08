require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App
  end

  def teardown
    Student.delete_all
  end

  def test_root_route
    response = get "/"

    assert response.ok?
    assert_includes response.body, "Be more personable!"
  end

  def test_root_route_with_a_student
    Student.create(name: "Molly Stoopler")
    response = get "/"

    assert response.ok?
    assert_includes response.body, "will answer!"
  end

  def test_can_create_a_student
    response = post "/students", name: "Moose"
    assert response.ok?, "Couldn't find route"
    moose = Student.where(name: "Moose").first

    assert_equal "Moose", moose.name
  end

  def test_can_delete_a_student
    Student.create(name: "Moose")
    response = delete "/students/Moose"

    refute Student.where(name: "Moose").first
  end
end
