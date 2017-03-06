# get the apir now k thanks
require 'httparty'
require 'pry'
# https://api.github.com/users/rdore88/events
# response = Net::HTTP.get('api.github.com', '/users/rdore88/events')
#
#
# puts "starting request"
# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
#
# binding.pry
# puts response
class StackExchange

  def questions
    HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
  end

end
