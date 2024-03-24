//
//  SceneDelegate.swift
//  Weather
//
//  Created by Олег Алексеев on 20.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    let viewController = WeatherViewController()

    guard let windowScene = scene as? UIWindowScene else { return }

    window = UIWindow(frame: windowScene.coordinateSpace.bounds)
    window?.windowScene = windowScene
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()
  }

}

