//
//  NetRequests.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

protocol RequstModelSerealizable {
    func parameters() -> [String: Any]
    func body() -> Data
}

extension RequstModelSerealizable {
    func parameters() -> [String: Any] { return [:] }
    func body() -> Data { return Data() }
}
