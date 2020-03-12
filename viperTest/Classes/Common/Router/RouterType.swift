//
//  RouterType.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

protocol RouterType: Presentable {
    var navigationController: UINavigationController { get }
    var rootViewController: UIViewController? { get }
    
    func present(_ module: Presentable)
    func present(_ module: Presentable, style: UIModalPresentationStyle)
    func present(_ module: Presentable, animated: Bool, style: UIModalPresentationStyle)
    
    func push(_ module: Presentable)
    func push(_ module: Presentable, hideBottomBar: Bool)
    func push(_ module: Presentable, animated: Bool)
    func push(_ module: Presentable, animated: Bool, completion: (() -> Void)?)
    func push(_ module: Presentable, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?)
    
    func popModule()
    func popModule(animated: Bool)
    
    func dismissModule()
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    func setRootModule(_ module: Presentable)
    func setRootModule(_ module: Presentable, hideBar: Bool)
    
    func popToRootModule(animated: Bool)
}
