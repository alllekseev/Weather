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

  private lazy var header = HeaderView()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .elementLight

    header.configureView(location: location)

    setupViews()
    configureConstraints()
  }

  func setupViews() {
    view.setupView(header)
  }

  func configureConstraints() {
    NSLayoutConstraint.activate([
      header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
      header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      header.heightAnchor.constraint(equalToConstant: 50),
    ])
  }


}

