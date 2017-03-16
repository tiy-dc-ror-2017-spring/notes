require "sinatra"
require_relative "git"
require "pry"

get "/homepage" do
  erb :"git_erb.html"
end

post "/repos" do
  username = params["username"]
  # @repos = GitApp.new(username).get_repo
  @repos = JSON.parse File.read("./stubbed_requests/rposborne_repos.json")
  erb :"repos.html"
end
