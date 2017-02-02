class DisplayController < ApplicationController
  def index
    @display = Display.first

    random = rand(1000)

    current_weather = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=clearwater,us&units=imperial&APPID=44e5ea9665216f4fa7621cf0ce5b3732&#{random}")

    @current_condtion = current_weather["weather"].map {|result| result["main"]}.first
    @current_temp = current_weather["main"]["temp"].to_s.split(".").first.to_i
  end
end
