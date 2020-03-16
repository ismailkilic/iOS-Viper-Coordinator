//
//  LoginInteractor.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInput {
    
    func userLogin(userName: String, userPassword: String, completion: @escaping (Bool, String?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            [weak self] in
//            guard let self = self else {
//                return
//            }
            completion(true, "İsmail KILIÇ")
        }
    }
    
}

// MARK: Private
extension LoginInteractor {
    
}
