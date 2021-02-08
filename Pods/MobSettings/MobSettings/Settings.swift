//
//  Settings.swift
//  Settings
//
//  Created by Angel Vasa on 07/02/21.
//

import Foundation
import UIKit
import MobCommon

public class Settings {
    public static func build(with navigationController: UINavigationController) -> SettingsView {
        let viewController = SettingsView(nibName: "SettingsView", bundle: Bundle(for: Self.self))
        let router  = SettingsRouter(withNavigationController: navigationController)
        viewController.router = router
        return viewController
    }
}

class SettingsRouter: Routable {
    var navigationController: UINavigationController
    
    typealias EventsEnumType = Events
    
    enum Events {
        case userAction
        case notificationAction
        case inviteFriendAction
        case FAQAction
        case feedBackAction
    }
    
    required init(withNavigationController navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func resove(forEvent event: Events) {
        switch event {
        case .userAction: ()
        case .notificationAction:
            print("Notification Action")
        case .inviteFriendAction: ()
        case .FAQAction: ()
        case .feedBackAction: ()
        }
    }}
