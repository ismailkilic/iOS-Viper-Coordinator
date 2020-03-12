//
//  MainAssembly.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import UIKit

typealias MainModule = Module<MainModuleInput, MainModuleOutput>

class MainAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> MainModule {
        
        // View
        let view = MainViewController.controllerFromStoryboard(.main)
        
        // Interactor
        let interactor = MainInteractor()
        
        // Router
        let router = MainRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = MainPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
