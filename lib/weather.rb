require 'httparty'
require 'json'
require_relative "./services/weather_service"
# require_relative "./services/multi_weather_service"

class Weatherio
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def weather_service
    WeatherService.new

  end

  # def multi_weather_service
  #   MultiWeatherService.new
  # end
end

x = Weatherio.new

print x.weather_service.weather_response('bogota')

# print x.multi_weather_service.multi_weather_response(["524901", "703448"])
