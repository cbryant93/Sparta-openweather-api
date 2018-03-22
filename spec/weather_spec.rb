require 'spec_helper'

describe Weatherio do

  context 'requesting information on a single city works correctly' do

    before(:all) do
      @weatherio = Weatherio.new
      @response = @weatherio.weather_service.weather_response('bogota')
    end
  end
end
