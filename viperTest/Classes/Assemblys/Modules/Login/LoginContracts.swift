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
}

// Module Output
protocol LoginModuleOutput {
    
}

// View Input
protocol LoginViewInput: BaseView {
    func set(title: String)
}

// View Output
protocol LoginViewOutput: class {
    func viewDidLoad()
    func loginUser(userName: String, userPassword: String)
}

// Interactor
protocol LoginInteractorInput {
    func userLogin(userName: String, userPassword: String, completion: @escaping (Bool, String?) -> Void)
}

// Router
protocol LoginRouterProtocol: AlertRoutable {
    func goMainPage(user: String)
}
