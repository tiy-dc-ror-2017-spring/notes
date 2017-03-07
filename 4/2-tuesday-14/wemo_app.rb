require "sinatra/base"
require "pry"
require "httparty"
require_relative "wemo"

class WemoApp < Sinatra::Base
  get "/" do
    current_time = Time.now
    status(404)
    body("Hello world! It is #{current_time}\n")
  end

  get '/add/' do
    result = params["number1"].to_i + params["number2"].to_f
    body(result.to_s)
  end

  get "/on" do
    puts "Sending a request to WEMO " + "*" * 80
    Wemo.on
  end

  get "/off" do
    puts "Sending a request to WEMO " + "*" * 80
    Wemo.off
  end

  run! if app_file == $PROGRAM_NAME
end
