require 'httparty'
require 'json'

class WeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def weather_response(city)

    JSON.parse(self.class.get("/weather?q=#{city}&appid=3c1bcc478fe0361e6d167ef0953e51fe").body)

  end
end
