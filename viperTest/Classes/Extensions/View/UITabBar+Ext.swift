//
//  UITabBar+Ext.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

extension UITabBar {
    func setBackgroundImage(_ image: UIImage, yOffset: Int) {
        self.backgroundImage = UIImage()
        self.shadowImage = UIImage()
        let tabBarView = UIImageView(image: image)
        tabBarView.frame = CGRect(x: 0, y: yOffset, width: Int(tabBarView.bounds.width), height: Int(tabBarView.bounds.height))
        self.addSubview(tabBarView)
        self.sendSubviewToBack(tabBarView)
    }
}
