require "./test/test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App
  end

  def test_declares_its_name
    response = get "/"
    assert response.ok?
    assert_includes response.body, "Robby's Coffee Catering Co."
  end
end
