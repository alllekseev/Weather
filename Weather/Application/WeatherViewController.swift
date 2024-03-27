//
//  WeatherViewController.swift
//  Weather
//
//  Created by Олег Алексеев on 20.03.2024.
//

import UIKit

final class WeatherViewController: UIViewController {

  private let location = Location(
    latitude: 0.0,
    longitude: 0.0,
    sunrise: Date.init(timeIntervalSince1970: 1711295440),
    sunset: Date.init(timeIntervalSince1970: 1711295440),
    cityName: "Москва, Россия"
  )

  private lazy var header = CurrentLocationView(location: location)
  private let currentWeatherView = CurrentWeatherView()
  private let additionalWeatherGroupView = AdditionalWeatherGroupView()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .elementLight

    prepareUI()
  }
}


extension WeatherViewController: ConfigureView {

  func setupViews() {
    view.setupView(header)
    view.setupView(currentWeatherView)
    view.setupView(additionalWeatherGroupView)
  }

  func configureConstraints() {
    NSLayoutConstraint.activate([
      header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
      header.centerXAnchor.constraint(equalTo: view.centerXAnchor),

      currentWeatherView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 50),
      currentWeatherView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

      additionalWeatherGroupView.topAnchor.constraint(equalTo: currentWeatherView.bottomAnchor, constant: 44),
      additionalWeatherGroupView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    ])
  }
}
