# get the apir now k thanks
require 'net/http'
require 'pry'
# https://api.github.com/users/rdore88/events
# response = Net::HTTP.get('api.github.com', '/users/rdore88/events')
puts "starting request"
# http://api.stackexchange.com/2.2/questions?site=stackoverflow'
response = Net::HTTP.get('api.stackexchange.com', '/2.2/questions?site=stackoverflow')

require 'json'
parsed_json = JSON.parse(response)
parsed_json["items"]
parsed_json["items"][0]
parsed_json["items"][0]["owner"]
puts "user_id: #{parsed_json["items"][0]["owner"]["user_id"]}"
