//
//  Module.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

protocol ModuleOutput {
    
}

struct Module<Input, Output>: Presentable {
    var view: UIViewController
    var input: Input
    var output: Output
    
    func toPresent() -> UIViewController {
        return view
    }
}
