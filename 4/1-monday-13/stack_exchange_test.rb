require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require "webmock/minitest"
require_relative "./httparty"

class StackExchangeTest < Minitest::Test
  def test_can_get_most_recent_event
    stub_request(:get, 'http://api.stackexchange.com/2.2/questions?site=stackoverflow')
      .to_return(body: File.read("./stubbed_requests/get_questions.json"), headers: { 'Content-Type' => "application/json" })

    assert_equal 1453887, StackExchange.new.questions["items"][0]["owner"]["user_id"]
  end
end
