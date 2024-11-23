//
//  SceneDelegate.swift
//  kickdown
//
//  Created by Рустем on 02.11.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController(rootViewController: EighthKickVC())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
