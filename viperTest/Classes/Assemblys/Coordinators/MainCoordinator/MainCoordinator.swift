//
//  MainCoordinator.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator, MainCoordinatorType {
    
    override func start() {
        let module = container.resolve(MainAssembly.self).build(coordinator: self)
        router.setRootModule(module)
    }
    
    func goLoginModul() {
        let module = container.resolve(LoginAssembly.self).build(coordinator: self)
        module.input.setUserInfo(userInfo: "User")
        router.push(module)
    }
    override func toPresent() -> UIViewController {
        return router.rootViewController!
    }
}
