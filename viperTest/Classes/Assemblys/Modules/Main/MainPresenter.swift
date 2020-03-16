//
//  MainPresenter.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class MainPresenter: BasePresenter<MainInteractorInput, MainRouterProtocol>, MainModuleOutput {
    // MARK: - Weak properties
    weak var view: MainViewInput?
    var userInfo: String?
    
    func goLogin() {
        router.goLoginPage()
    }
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    func setUserInfo(userInfo: String) {
        self.userInfo = userInfo
    }
    
    
}

// MARK: View Output
extension MainPresenter: MainViewOutput {
    func btnLoginClicked() {
        self.goLogin()
    }
    
    func viewDidLoad() {
        view?.set(title: "Main")
        view?.setUserMessage(message: "Hoş geldin \(userInfo ?? "")")
    }
}
