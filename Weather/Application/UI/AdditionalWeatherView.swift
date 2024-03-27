//
//  AdditionalWeatherView.swift
//  Weather
//
//  Created by Олег Алексеев on 25.03.2024.
//

import UIKit

final class AdditionalWeatherView: UIView {

  private var stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .fillEqually
    stackView.alignment = .leading
    stackView.spacing = 5
    return stackView
  }()

  private var valueStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = .fillProportionally
    stackView.alignment = .center
    stackView.spacing = 8
    return stackView
  }()

  private var nameLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    label.textColor = .mainDark
    return label
  }()

  private var valueLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    label.textColor = .mainDark
    return label
  }()

  private var iconView: UIImageView = {
    let imageView = UIImageView()
    imageView.tintColor = .mainDark
    return imageView
  }()

  init(name: String, value: String, icon: String) {
    self.init()
    nameLabel.text = name
    valueLabel.text = value
    iconView.systemImage(with: icon, and: 16)
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension AdditionalWeatherView: ConfigureView {
  func setupViews() {
    valueStackView.addArrangedSubview(iconView)
    valueStackView.addArrangedSubview(valueLabel)
    stackView.addArrangedSubview(nameLabel)
    stackView.addArrangedSubview(valueStackView)

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

/// layer.addSublayer()
