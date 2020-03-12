//
//  LoginCoordinatorAssembly.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 11.03.2020
//	Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

class LoginCoordinatorAssembly: Assembly {
    func build() -> LoginCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)
        let coordinator = LoginCoordinator(container: container, router: router)
        return coordinator
    }
    
    
    func build(router: RouterType) -> LoginCoordinatorType {
          let coordinator = LoginCoordinator(container: container, router: router)
          return coordinator
      }
    
}
