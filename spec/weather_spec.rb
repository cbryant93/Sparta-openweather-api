require 'spec_helper'

describe Weatherio do

  context 'requesting information on a single city works correctly' do

    before(:all) do
      @weatherio = Weatherio.new
      @response = @weatherio.weather_service.weather_response('bogota')
    end

    it "Longitude and Latitude should be Integers" do
      expect(@response["coord"]["lon"]).to be_a(Float)
      expect(@response["coord"]["lat"]).to be_a(Float)
    end

    it "Weather Description should be a string" do
      expect(@response["weather"].first["description"]).to be_a(String)
    end

    it "Country shortened name should be up to 3 letters long" do
      expect(@response["sys"]["country"].length).to be_between(1,3)
    end

    it "Country name should be a string" do
      expect(@response["name"]).to be_a(String)
    end

    it "Temperature should be a decimal" do
      expect(@response["main"]["temp"]).to be_a(Float)
      expect(@response["main"]["temp_min"]).to be_a(Float)
      expect(@response["main"]["temp_max"]).to be_a(Float)
    end


  end
end
