require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require "webmock/minitest"
require "httparty"
require "pry"

require_relative "../git.rb"

class TestGitApp < Minitest::Test
  def test_get_repo
    stub_request(:post, "https://api.github.com/users/Rdore88/repos").to_return(
      body: File.read("./stubbed_requests/Rdore88_repos.json"),
      headers: { "Content-Type" => "application/json" }
    )
    assert_equal 82_109_013, GitApp.new("Rdore88").get_repo[0]["id"]
  end
end
