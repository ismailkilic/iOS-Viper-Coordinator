//
//  LoginRouter.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class LoginRouter: BaseModuleRouter, LoginRouterProtocol {
     func goMainPage(user: String) {
           container.resolve(MainCoordinatorAssembly.self).build(router: coordinator.router).goMainModul(user: user)
       }
}
