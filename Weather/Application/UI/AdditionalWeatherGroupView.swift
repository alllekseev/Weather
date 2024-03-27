//
//  AdditionalWeatherGroupView.swift
//  Weather
//
//  Created by Олег Алексеев on 25.03.2024.
//

import UIKit

final class AdditionalWeatherGroupView: UIView {

  private var stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = .fill
    stackView.alignment = .center
    stackView.spacing = 50
    return stackView
  }()

  private lazy var windInformation = AdditionalWeatherView(name: "Ветер", value: "9 м/с", icon: "wind")
  private lazy var humidityInformation = AdditionalWeatherView(name: "Влажность", value: "95 %", icon: "humidity")

  private var divider: UIView = {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 3, height: 44))
    view.backgroundColor = .red
    view.layer.borderColor = UIColor.mainDark.cgColor
    view.layer.borderWidth = 1
    return view
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  convenience init() {
    self.init(frame: .zero)
    prepareUI()
  }
}

extension AdditionalWeatherGroupView: ConfigureView {
  func setupViews() {
    stackView.addArrangedSubview(windInformation)
    stackView.addArrangedSubview(divider)
    stackView.addArrangedSubview(humidityInformation)

    setupView(stackView)
  }

  func configureConstraints() {
    NSLayoutConstraint.activate([
      divider.heightAnchor.constraint(equalToConstant: 44),
      divider.widthAnchor.constraint(equalToConstant: 1),
      
      stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

      stackView.heightAnchor.constraint(equalTo: heightAnchor),
      stackView.widthAnchor.constraint(equalTo: widthAnchor),
    ])
  }
  
}
