require 'httparty'
require 'json'

class MultiWeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def multi_weather_response(cities_array)

    JSON.parse(self.class.post('/group?id=', body: { "cities" => cities_array}'&appid=3c1bcc478fe0361e6d167ef0953e51fe').body)

  end

end
