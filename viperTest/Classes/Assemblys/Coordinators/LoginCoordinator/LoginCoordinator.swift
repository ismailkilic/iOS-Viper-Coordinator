//
//  LoginCoordinator.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 11.03.2020
//	Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class LoginCoordinator: BaseCoordinator, LoginCoordinatorType {
    override func start() {
        let module = container.resolve(LoginAssembly.self).build(coordinator: self)
        router.present(module, animated: true, style: .overCurrentContext)
    }
}
