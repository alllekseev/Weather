//
//  ConfigureView.swift
//  Weather
//
//  Created by Олег Алексеев on 26.03.2024.
//

import Foundation

protocol ConfigureView {
  func setupViews()
  func configureConstraints()
}

extension ConfigureView {
  func prepareUI() {
    setupViews()
    configureConstraints()
  }
}
