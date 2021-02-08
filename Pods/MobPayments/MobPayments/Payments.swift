//
//  Settings.swift
//  Settings
//
//  Created by Angel Vasa on 07/02/21.
//

import Foundation
import UIKit
import MobCommon

public class Payments {
    public static func build(with navigationController: UINavigationController) -> PaymentsView {
        let viewController = PaymentsView(nibName: "PaymentsView", bundle: Bundle(for: Self.self))
        let router  = PaymentsRouter(withNavigationController: navigationController)
        viewController.router = router
        return viewController
    }
}

class PaymentsRouter: Routable {
    var navigationController: UINavigationController
    
    typealias EventsEnumType = Events
    
    enum Events {
        case betweenAccountTapped
        case nationalTransferTapped
        case internationalTransferTapped
    }
    
    required init(withNavigationController navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func resove(forEvent event: Events) {
        switch event {
        case .betweenAccountTapped: ()
        case .nationalTransferTapped:
            print("national Transfer")
        case .internationalTransferTapped: ()
        }
    }}
