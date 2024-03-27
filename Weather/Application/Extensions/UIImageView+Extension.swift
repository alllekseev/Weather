//
//  UIImageView+Extension.swift
//  Weather
//
//  Created by Олег Алексеев on 25.03.2024.
//

import UIKit

extension UIImageView {

  func systemImage(with name: String, and fontSize: CGFloat) {
    let font = UIFont.systemFont(ofSize: fontSize)
    let configuration = UIImage.SymbolConfiguration(font: font)

    self.image = UIImage(systemName: name, withConfiguration: configuration)
  }
}
