//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import UIKit

final class CurrentWeatherView: UIView {

  private var weatherIcon: UIImageView = {
    let imageView = UIImageView()
    imageView.tintColor = .mainDark
    return imageView
  }()

  private var temperatureLabel: UILabel = {
    let label = UILabel()
    label.textColor = .mainDark
    label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
    return label
  }()

  private var weatherDescription: UILabel = {
    let label = UILabel()
    label.textColor = .mainDark
    label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
    return label
  }()

  private var stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .equalSpacing
    stackView.alignment = .center
    stackView.spacing = 24
    return stackView
  }()


  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  convenience init() {
    self.init(frame: .zero)
    setupViews()
    configureConstraints()

    self.weatherIcon.systemImage(with: "cloud.sun", and: 65)
    temperatureLabel.text = "10°"
    self.weatherDescription.text = "Облачно"
  }

  convenience init(weatherIcon: String, temperature: String, weatherDescription: String) {
    self.init()
    prepareUI()
    
    self.weatherIcon.systemImage(with: weatherIcon, and: 70)
    temperatureLabel.text = "\(temperature)°"
    self.weatherDescription.text = weatherDescription
  }
}

extension CurrentWeatherView: ConfigureView {

  func setupViews() {
    stackView.addArrangedSubview(weatherIcon)
    stackView.addArrangedSubview(temperatureLabel)
    stackView.addArrangedSubview(weatherDescription)
    setupView(stackView)
  }
  
  func configureConstraints() {
    NSLayoutConstraint.activate([
      stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

      stackView.heightAnchor.constraint(equalTo: heightAnchor),
      stackView.widthAnchor.constraint(equalTo: widthAnchor),
    ])
  }
}
