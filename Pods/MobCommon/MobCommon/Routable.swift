//
//  Routable.swift
//  MobCommon
//
//  Created by Angel Vasa on 07/02/21.
//

import Foundation
import UIKit

/**
class OnboardingRouter: Routable {
    var navigationController: UINavigationController
    
    typealias EventsEnumType = Events
    
    enum Events {
        case emailEntered
        case passcodeEntered
        case biometricEnabled
    }
    
    required init(withNavigationController navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func resove(forEvent event: Events) {
        switch event {
        case .emailEntered: ()
        case .passcodeEntered: ()
        case .biometricEnabled: ()
        }
    }
}
*/

public protocol Routable {
    associatedtype EventsEnumType
    var navigationController: UINavigationController { get set }
    
    init(withNavigationController navigationController: UINavigationController)
    
    func resove(forEvent event: EventsEnumType)
}
