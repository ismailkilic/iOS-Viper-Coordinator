//
//  MainContracts.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

// Module Input
protocol MainModuleInput {
    func setUserInfo(userInfo: String)
}

// Module Output
protocol MainModuleOutput: ModuleOutput {
    
}

// View Input
protocol MainViewInput: BaseView {
    func set(title: String)
    func setUserMessage(message: String)
}

// View Output
protocol MainViewOutput: AnyObject {
    func viewDidLoad()
    func btnLoginClicked()
}

// Interactor
protocol MainInteractorInput {
    
}

// Router
protocol MainRouterProtocol: AlertRoutable {
    func goLoginPage()
}
