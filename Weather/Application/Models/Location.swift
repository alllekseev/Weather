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
    case 200...202: return "cloud.bolt.rain"
    case 230...233: return "cloud.sun.bolt"
    case 300...302: return "cloud.drizzle"
    case 500, 501, 511, 520, 522, 900: return "cloud.rain"
    case 502: return "cloud.heavyrain"
    case 521: return "cloud.sun.rain"
    case 600, 621: return "cloud.snow"
    case 601, 602, 622: return "cloud.snow.fill"
    case 610: return "cloud.sleet"
    case 611, 612, 623: return "cloud.sleet"
    case 700, 711, 721, 731, 741, 751: return ""
    case 800: return "sun.max"
    case 801, 802: return "cloud.sun"
    case 803: return "cloud"
    case 804: return "smoke"
    default: return "cloud.rain"
    }
  }
}
