//
//  LoginContracts.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

// Module Input
protocol LoginModuleInput {
    func setUserInfo(userInfo: String)
}

// Module Output
protocol LoginModuleOutput {
    
}

// View Input
protocol LoginViewInput: class {
    func set(title: String)
}

// View Output
protocol LoginViewOutput: class {
    func viewDidLoad()
}

// Interactor
protocol LoginInteractorInput {
}

// Router
protocol LoginRouterProtocol: AlertRoutable {
}
