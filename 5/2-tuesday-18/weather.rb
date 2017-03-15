require 'httparty'

class Weather
  def initialize(zipcode)
    @zipcode = zipcode
  end

  def conditions
    HTTParty.get("http://api.wunderground.com/api/10f48e19197a0061/conditions/q/#{@zip_code}.json")
  end
end
