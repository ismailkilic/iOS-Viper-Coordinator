//
//  MainViewController.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var output: MainViewOutput!
    
    @IBOutlet weak var lbl_userLoginMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
    
}

// MARK: - Configure
extension MainViewController {
    
}

// MARK: View Input
extension MainViewController: MainViewInput {
    func setUserMessage(message: String) {
        lbl_userLoginMessage.text = message
    }
    
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension MainViewController {
    
}
