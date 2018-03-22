require 'httparty'
require 'json'
require_relative "./services/weather_service"

class Weatherio
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def weather_service
    WeatherService.new

  end
end

x = Weatherio.new

print x.weather_service.weather_response('bogota')
