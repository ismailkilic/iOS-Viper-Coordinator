//
//  DeepLinkOption.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

struct DeepLinkConstants {
    static let home = "home"
    static let item = "item"
}

enum DeepLinkOption {
    case home
    //case item(String?)
    
    static func build(with userActivity: NSUserActivity) -> DeepLinkOption? {
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb else { return nil }
        guard let url = userActivity.webpageURL else { return nil }
        guard let _ = URLComponents(url: url, resolvingAgainstBaseURL: true) else { return nil }
        
        //TODO: parse url
        return nil
    }
    
    static func build(with dict: [String : AnyObject]?) -> DeepLinkOption? {
        guard let screen = dict?["screen"] as? String else { return nil }
        //let itemID = dict?["item_id"] as? String
        
        switch screen {
        case DeepLinkConstants.home: return .home
        //case DeepLinkConstants.item: return .item(itemID)
        default: return nil
        }
    }
}
