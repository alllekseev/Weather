//
//  Weather.swift
//  Weather
//
//  Created by Олег Алексеев on 20.03.2024.
//

import Foundation

struct Weather {
  struct Weather {
    let id: Int
    let main: String
    let description: String
    let icon: String
  }

  struct Coordinates {
    let longitude: Double
    let latitude: Double
  }

  struct Main {
    let temperature: Double
    let pressure: Int
    let humidity: Int
    let minTemperature: Double
    let maxTemperature: Double
  }
}


