//
//  AssemblyFactory.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

protocol AssemblyFactoryProtocol: class {
    func apply<T: AssemblyType>(_ assembly: T.Type, name: String?)
    func resolve<T: AssemblyType>(_ type: T.Type, name: String?) -> T.Type
}

class AssemblyFactory {
    typealias AssemblyCollection = [String : Any.Type]
    fileprivate var assemblyCollection = AssemblyCollection()
}

extension AssemblyFactory: AssemblyFactoryProtocol {
    func apply<T: AssemblyType>(_ assembly: T.Type, name: String? = nil) {
        let key = ObjectKey(assembly, name: name).key
        self.assemblyCollection[key] = assembly
    }
    
    func resolve<T: AssemblyType>(_ type: T.Type, name: String? = nil) -> T.Type {
        let key = ObjectKey(type, name: name).key
        guard let assembly = assemblyCollection[key] else { fatalError("Assemblay '\(String(describing: type))' has't been registered, use 'apply( _:)' method") }
        return assembly as! T.Type
    }
}
