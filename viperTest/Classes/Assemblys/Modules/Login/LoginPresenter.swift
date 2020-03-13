//
//  LoginPresenter.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class LoginPresenter: BasePresenter<LoginInteractorInput, LoginRouterProtocol>, LoginModuleOutput {
    
    // MARK: - Weak properties
    weak var view: LoginViewInput?
}

// MARK: Private
extension LoginPresenter {
    
}

// MARK: Module Input
extension LoginPresenter: LoginModuleInput {  
    func setUserInfo(userInfo: String) {
        print(userInfo)
    }
    
    
}

// MARK: View Output
extension LoginPresenter: LoginViewOutput {
    func viewDidLoad() {
        view?.set(title: "Login")
    }
}
