//
//  Theme.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit


struct Theme {
    private static let lightThemeColors: [Color: String] = [
        .red: "#ff0000",
        .orange: "#ff0000",
        .gray: "#ff0000",
        .black: "#000000",
    ]
    
    private static let darkThemeColors: [Color: String] = [
        .red: "#ff0000",
        .orange: "#ff0000",
        .gray: "#ff0000",
        .black: "#ffffff",
    ]
    
    enum Color: String {
        case black
        case darkGray
        case lightGray
        case white
        case gray
        case red
        case green
        case blue
        case cyan
        case yellow
        case magenta
        case orange
        case purple
        case brown
    }

    static func color(_ type: Color) -> UIColor {
        var isDarkMode = false
        if #available(iOS 13.0, *) { isDarkMode = UITraitCollection.current.userInterfaceStyle == .dark }
        let colorCollection = isDarkMode ? darkThemeColors : lightThemeColors
        guard let hexColor = colorCollection[type] else {
            fatalError("not found color with type: \(type.rawValue)")
        }
        return UIColor(hex: hexColor)
    }
    
    enum Font: String {
        case light = "SFProDisplay-Light"
        case regular = "SFProDisplay-Regular"
        case medium = "SFProDisplay-Medium"
        case bold = "SFProDisplay-Bold"
        
        enum Size: CGFloat {
            case xxlarge = 30
            case xlarge = 25
            case large = 20
            case medium = 18
            case normal = 16
            case small = 12
        }
        
        func font(size: Size) -> UIFont? {
            let fontSize = size.rawValue
            let fontName = self.rawValue
            return UIFont(name: fontName, size: fontSize)
        }
    }
}
