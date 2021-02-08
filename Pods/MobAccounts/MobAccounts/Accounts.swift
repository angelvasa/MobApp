//
//  Accounts.swift
//  MobAccounts
//
//  Created by Angel Vasa on 08/02/21.
//

import Foundation
import MobCommon

public class Accounts {
    public static func build(with navigationController: UINavigationController) -> AccountsView {
        let viewController = AccountsView(nibName: "AccountsView", bundle: Bundle(for: Self.self))
        let router  = AccountsRouter(withNavigationController: navigationController)
        viewController.router = router
        return viewController
    }
}

class AccountsRouter: Routable {
    var navigationController: UINavigationController
    
    typealias EventsEnumType = Events
    
    enum Events {
        case accountTapped(String)
    }
    
    required init(withNavigationController navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func resove(forEvent event: Events) {
        switch event {
        case .accountTapped( _):
            goToAccountDetails()
            break
        }
    }
    
    private func goToAccountDetails() {
        let detailView = AccountsDetailView(nibName: "AccountsDetailView", bundle: Bundle(for: Self.self))
        self.navigationController.pushViewController(detailView, animated: true)
    }
}
