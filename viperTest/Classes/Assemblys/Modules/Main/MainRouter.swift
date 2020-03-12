//
//  MainRouter.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class MainRouter: BaseModuleRouter, MainRouterProtocol {
    func goLoginPage() {
        LoginCoordinatorAssembly(container: container).build(router: coordinator.router).start()
    }  
}
