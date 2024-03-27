//
//  UIView+Extensions.swift
//  Weather
//
//  Created by Олег Алексеев on 24.03.2024.
//

import UIKit

extension UIView {
  func setupView(_ view: UIView) {
    view.translatesAutoresizingMaskIntoConstraints = false
    addSubview(view)
  }

  func debug(with color: UIColor = .red) {
    layer.borderColor = color.cgColor
    layer.borderWidth = 1
  }
}
