require 'spec_helper'

describe Weatherio do

  context 'requesting information on a single city works correctly' do

    before(:all) do
      @weatherio = Weatherio.new
      @response = @weatherio.weather_service.weather_response('bogota')
    end

    it "should respond with a status message of 200" do
      expect(@response["coord"]["lon"]).to be_a(Float)
    end
  end
end
