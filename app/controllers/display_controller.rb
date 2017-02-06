class DisplayController < ApplicationController
  layout "application", :except => [:index]

  def index
    @display = Display.first

    random = rand(1000)

    current_weather = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=saintpetersburg,us&units=imperial&APPID=44e5ea9665216f4fa7621cf0ce5b3732&#{random}")

    @current_condtion   = current_weather["weather"].map {|result| result["main"]}.first
    @current_temp       = current_weather["main"]["temp"].to_s.split(".").first.to_i
    @weather_icon_code  = current_weather["weather"].map {|result| result["id"]}.first
    @current_location   = current_weather["name"]

    forecast = response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=stpetersburg,us&units=imperial&APPID=44e5ea9665216f4fa7621cf0ce5b3732&#{random}")
    @forecast_city      = forecast["city"]["name"]

    @next_day_high      = forecast["list"][0]["temp"]["max"].to_s.split(".").first.to_i
    @next_day_low       = forecast["list"][0]["temp"]["min"].to_s.split(".").first.to_i
    @next_day_icon      = forecast["list"][0]["weather"].first["id"]

    @following_day_high = forecast["list"][1]["temp"]["max"].to_s.split(".").first.to_i
    @following_day_low  = forecast["list"][1]["temp"]["min"].to_s.split(".").first.to_i
    @following_day_icon = forecast["list"][1]["weather"].first["id"]

    @third_day_high     = forecast["list"][2]["temp"]["max"].to_s.split(".").first.to_i
    @third_day_low      = forecast["list"][2]["temp"]["min"].to_s.split(".").first.to_i
    @third_day_icon     = forecast["list"][2]["weather"].first["id"]

    calendar = GoogleCalendar.new(1)
    @calendar_events = calendar.items.map do |item|
      item
    end

    # calendar_times = calendar.items.map do |item|
    #   time = item.start.date_time
    # end

  end

  def admin
  end
end
