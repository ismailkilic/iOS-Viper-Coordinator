//
//  AppCoordinator.swift
//  viperTest
//
//  Created by İsmail KILIÇ on 9.03.2020
//  Copyright © 2020 İsmail KILIÇ. All rights reserved.
//

import Foundation

class AppCoordinator: BaseCoordinator, AppCoordinatorType {
    
    private var instructor: LaunchInstructor {
        return LaunchInstructor.configure(tutorialWasShown: true, isAutorized: true)
    }
    
    override func start(with option: DeepLinkOption?) {
        if let option = option {
            switch option {
            case .home:
                startMainFlow()
            }
        } else {
            switch instructor {
            case .auth: startAuthFlow()
            case .onboarding: startOnboardingFlow()
            case .main: startMainFlow()
            }
        }
    }
}

// MARK: Main Flow
extension AppCoordinator {
    func startMainFlow() {
        let coordinator = container.resolve(MainCoordinatorAssembly.self).build(router: router)
        addChild(coordinator)
        coordinator.start()
        
        self.router.setRootModule(coordinator)
    }
}

// MARK: Auth Flow
extension AppCoordinator {
    func startAuthFlow() {
        
    }
}

// MARK: Onboarding Flow
extension AppCoordinator {
    func startOnboardingFlow() {
        
    }
}
