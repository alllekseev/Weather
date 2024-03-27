//
//  Location.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import Foundation

struct Location {
  let latitude: Double
  let longitude: Double
  let sunrise: Date
  let sunset: Date
  let cityName: String
}

// https://api.openweathermap.org/data/2.5/onecall?lat=19.0760&lon=72.8777&appid={yourAPIkey}"
// https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=0c6e805a95e7c2453c2a38a5a9d2aed4

/// city
///   - name: String
///   - sunrise: Date
///   - sunset: Date
///
/// list
///    - object
///     - dt: Date
///     - main
///     - weather
///     - clouds
///     - wind
///     - pop (Probability of precipitation): Double (from 0 to 1) -> (from 0% to 100%)

/*
 ?latitude=55.751244&longitude=37.618423&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset&timeformat=unixtime&timezone=Europe%2FMoscow&format=flatbuffers

 url: https://api.open-meteo.com/v1/forecast
 latitude
 longitude
 daily - weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset
 timeformat - unixtime
 timezone - Europe/Moscow
 current - temperature_2m,relative_humidity_2m,is_day,wind_speed_10m,wind_direction_10m
 */

// https://api.weatherbit.io/v2.0/forecast/daily?city=Raleigh,NC&key=API_KEY
// a4eb6907801b4f6095ae2fc7be04858d

enum WeatherType: Int {

  case thunderstormLightRain = 200
  case thunderstormRain = 201
  case thunderstormHeavyRain = 202
  case thunderstormLightDrizzle = 230
  case thunderstormDrizzle = 231
  case thunderstormHeavyDrizzle = 232
  case thunderstormHail = 233
  case lightDrizzle = 300
  case drizzle = 301
  case heavyDrizzle = 302
  case lightRain = 500
  case moderateRain = 501
  case heavyRain = 502
  case freezingRain = 511
  case lightShowerRain = 520
  case showerRain = 521
  case heavyShowerRain = 522
  case lightSnow = 600
  case snow = 601
  case heavySnow = 602
  case mixSnowRain = 610
  case sleet = 611
  case heavySleet = 612
  case snowShower = 621
  case heavySnowShower = 622
  case flurries = 623
  case mist = 700
  case smoke = 711
  case haze = 721
  case sandDust = 731
  case fog = 741
  case freezingFog = 751
  case clearSky = 800
  case fewClouds = 801
  case scatteredClouds = 802
  case brokenClouds = 803
  case overcastClouds = 804
  case unknownPrecipitation = 900

  var dayIcon: String {
    switch self.rawValue {
    case 200...202: return ""
    case 230...233: return ""
    case 300...302: return ""
    case 500, 501, 511, 520, 522, 900: return ""
    case 502: return ""
    case 521: return ""
    case 600, 610, 621: return ""
    case 601, 602, 622: return ""
    case 611, 612: return ""
    case 623: return ""
    case 700, 711, 721, 731, 741, 751: return ""
    case 800: return ""
    case 801, 802: return ""
    case 803: return ""
    case 804: return ""
    default: return ""
    }
  }
}



/*
 200  Thunderstorm with light rain
 201  Thunderstorm with rain
 202  Thunderstorm with heavy rain
 230  Thunderstorm with light drizzle
 231  Thunderstorm with drizzle
 232  Thunderstorm with heavy drizzle
 233  Thunderstorm with Hail
 300  Light Drizzle
 301  Drizzle
 302  Heavy Drizzle
 500  Light Rain
 501  Moderate Rain
 502  Heavy Rain
 511  Freezing rain
 520  Light shower rain
 521  Shower rain
 522  Heavy shower rain
 600  Light snow
 601  Snow
 602  Heavy Snow
 610  Mix snow/rain
 611  Sleet
 612  Heavy sleet
 621  Snow shower
 622  Heavy snow shower
 623  Flurries
 700  Mist
 711  Smoke
 721  Haze
 731  Sand/dust
 741  Fog
 751  Freezing Fog
 800  Clear sky
 801  Few clouds
 802  Scattered clouds
 803  Broken clouds
 804  Overcast clouds
 900  Unknown Precipitation
 */
