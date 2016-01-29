require "SnowWeather/version"
require "SnowWeather/conditions"


require 'json'
require 'open-uri'
require 'rest-client'



module SnowWeather
  attr_accessor :api_key

  def self.api_key(api_key)
     @@api_key = api_key
  end 
  
  def self.get_api_key
     return @@api_key
  end 
end
