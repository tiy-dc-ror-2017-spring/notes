ENV["RACK_ENV"] = "test"

begin
  require "pry"
rescue LoadError
end

require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require "rack/test"

require_relative "../app/app"
