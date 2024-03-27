//
//  CurrentLocationView.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import UIKit

final class CurrentLocationView: UIView {

  private var locationNameLabel: UILabel = {
    let label = UILabel()
    label.textColor = .mainDark
    label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
    return label
  }()

  private var currentTimeLabel: UILabel = {
    let label = UILabel()
    label.textColor = .mainDark
    label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    return label
  }()

  private var stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.alignment = .center
    stackView.spacing = 10
    return stackView
  }()

  init(location: Location) {
    self.init()
    locationNameLabel.text = location.cityName
    currentTimeLabel.text = "Сейчас"
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension CurrentLocationView: ConfigureView {

  func setupViews() {
    stackView.addArrangedSubview(locationNameLabel)
    stackView.addArrangedSubview(currentTimeLabel)

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
