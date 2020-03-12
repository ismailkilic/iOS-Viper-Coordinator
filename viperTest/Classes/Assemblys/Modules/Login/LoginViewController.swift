//
//  LoginViewController.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInput {
    var output: LoginViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension LoginViewController {
    
}

// MARK: View Input
extension LoginViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension LoginViewController {
    
}
