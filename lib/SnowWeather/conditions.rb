module SnowWeather
  class Conditions
    include SnowWeather

    def self.getConditions(state, city)
      @slash = '/'
      @base_url = 'http://api.wunderground.com/api/' + @@api_key.to_s + '/conditions/q/' + state.to_s + @slash.to_s + city.to_s + '.json'  
      @data = open(@base_url.to_s).read
      @parse_data = JSON.parse(@data)
      return @parse_data
    end
  end  
end 
