//
//  HeaderView.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import UIKit

final class HeaderView: UIView {

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

  private var headerStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.alignment = .center
    stackView.spacing = 10
    return stackView
  }()

  
//  override init(frame: CGRect) {
//    super.init(frame: frame)
//  }
//
//  required init?(coder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//  }
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    setupViews()
    constaintViews()
  }

  func configureView(location: Location) {
    locationNameLabel.text = location.cityName
    currentTimeLabel.text = "Сейчас"
  }

  func setupViews() {
    headerStackView.addArrangedSubview(locationNameLabel)
    headerStackView.addArrangedSubview(currentTimeLabel)

    setupView(headerStackView)
  }

  func constaintViews() {
    NSLayoutConstraint.activate([
      headerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
      headerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
    ])
  }

}
