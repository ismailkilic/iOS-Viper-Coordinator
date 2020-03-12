//
//  URL+Ext.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

extension URL {
    func fileSize() -> Int64 {
        if let resourceValuess = try? (self as NSURL).resourceValues(forKeys: [URLResourceKey.fileSizeKey]) {
            let size = resourceValuess[URLResourceKey.fileSizeKey]
            return size as? Int64 ?? 0
        } else {
            return 0
        }
    }
}
