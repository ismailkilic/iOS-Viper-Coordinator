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
    func loginUser(userName: String, userPassword: String) {
        if userName.isEmpty {
            router.showAlert(title: "Uyarı", message: "Kullanıcı adı boş olamaz")
        }
        else if userName.count < 4 {
            router.showAlert(title: "Uyarı", message: "Kullanıcı adı 4 karakterden küçük olamaz")
        }
        else  if userPassword.isEmpty {
            router.showAlert(title: "Uyarı", message: "Şifre alanı boş olamaz")
        }
        else if userPassword.count < 6 {
            router.showAlert(title: "Uyarı", message: "Şifre 6 karakterden küçük olamaz")
        }
        else{
            view?.showProgressHUD()
            interactor.userLogin(userName: userName, userPassword: userPassword) { [weak self](isSucess, response) in
                guard let self = self else { return }
                guard isSucess else {
                    self.router.showAlert(title: "Başarısız", message: "Giriş işlemi başarısız")
                    return
                }
                self.view?.hideProgressHUD()
                self.router.goMainPage(user: response!)
                
            }
        }
    }
    
    func viewDidLoad() {
        view?.set(title: "Login")
    }
}
