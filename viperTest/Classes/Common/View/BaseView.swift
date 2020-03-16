
//
//  BaseView.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 16.03.2020.
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation
import UIKit

protocol BaseView: class {
    func showProgressHUD()
    func hideProgressHUD()
}


extension BaseView {
    func showProgressHUD() {
        ActivityIndicatorUtil.show("Bekleyiniz", animated: true)
       // ProgressHud.shared.show(view: UIApplication.topViewController()!.view)
    }
    
    func hideProgressHUD() {
        ActivityIndicatorUtil.hide()
    }
}
