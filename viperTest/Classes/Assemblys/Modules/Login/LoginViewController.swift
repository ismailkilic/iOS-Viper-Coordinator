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
    @IBOutlet weak var tf_userName: UITextField!
    @IBOutlet weak var tf_userPassword: UITextField!
    
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
    @IBAction func onClick_btnLogin(_ sender: Any) {
        output.loginUser(userName: tf_userName.text ?? "", userPassword: tf_userPassword.text ?? "")
    }
}
