ENV['RACK_ENV'] = 'test'

require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require 'rack/test'
require_relative "wemo_app"


class WemoAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    WemoApp
  end

  def test_can_get_the_root_path
    response = get("/")
    assert response.not_found?

  end
end
