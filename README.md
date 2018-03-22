# Sparta-openweather-api
Task was to use http://openweathermap.org/ api and sourcing the Json weather data of a city.
As well as this, create tests on the data taken from the API.

# How to run

1. Go to https://github.com/cbryant93/Sparta-openweather-api
2. Click on download file
3. In the terminal run 'rspec'
4. All 5 tests should run successfully showing green as well as the Json data taken from the weather API

# Problems

One major problem I had was trying to recieve weather information for multiple cities.

```ruby
    JSON.parse(self.class.post('/group?id=', body: { "cities" => cities_array}'&appid=3c1bcc478fe0361e6d167ef0953e51fe').body)
```

I think the problem lies within here, maybe something to do with the concatenation of the string.
