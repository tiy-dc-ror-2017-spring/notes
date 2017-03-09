require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App
  end
  focus
  def test_that_a_drug_can_be_created
    request_payload = {
      name: "Snake Oil",
      approved_on: Date.new(1896, 10, 1)
    }.to_json

    response = post "/drugs", request_payload

    assert_equal 200, response.status
    payload = JSON.parse(response.body)

    assert Drug.find(payload["id"])
  end
end
