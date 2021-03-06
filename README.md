# SnowWeather

SnowWeather is a simple Gem to interface with Weather Undergounds API

## Gem Status
<a href="https://badge.fury.io/rb/SnowWeather"><img src="https://badge.fury.io/rb/SnowWeather.svg" alt="Gem Version" height="18"></a>

## Travis CI Build Status
<a href="https://travis-ci.org/Jrsnow8921"><img src="https://travis-ci.org/Jrsnow8921/SnowWeatherGem.svg?branch=master" height="18"></a>



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'SnowWeather'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install SnowWeather

## Usage


Install the configuration file please change the api key to your api key from Weather Underground. 

```ruby 
  rails g snow_weather:config
```


Get current conditions 


```ruby 
   SnowWeather::Conditions.getConditions(<'state'>, <'city'>)
```

Example 

```ruby 
    SnowWeather.api_key(<'123456789123456789'>)
    
    @data = SnowWeather::Conditions.getConditions('PA', 'Pittsburgh')
    #gets the current temp in F
    @temp = @data['current_observation']['temp_f']
    #gets the current weather condition 
    @weather = @data['current_observation']['weather']

    puts "The current weather is #{@weather} with a temperature of #{@temp}°F"

 
```
Result 

    The current weather is cloudy with a temperature of 60°F


Data is returned in JSON format.


## Contributing

1. Fork it ( https://github.com/Jrsnow8921/SnowWeatherGem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
