//
//  AppCoordinatorAssembly.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

class AppCoordinatorAssembly: Assembly {
    func build() -> AppCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)
        let coordinator = AppCoordinator(container: container, router: router)
        return coordinator
    }
}
