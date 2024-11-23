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
//        let navigationController = UINavigationController(navigationBarClass: CustomNavigationBar.self, toolbarClass: nil)
//        navigationController.pushViewController(EighthKickVC(), animated: true)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}


class CustomNavigationBar: UINavigationBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        print(1111)
        prefersLargeTitles = true
        largeContentImage = UIImage(systemName: "person.crop.circle.fill")
        largeContentTitle = "AVATAR"
    }
}
