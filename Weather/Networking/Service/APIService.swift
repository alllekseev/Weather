//
//  APIService.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import Foundation

struct WeatherService: APIRequest {
  
  typealias Response = [String: Weather]
  
  var path: String
}
