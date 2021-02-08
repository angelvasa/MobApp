//
//  TabViewController.swift
//  MobApp
//
//  Created by Angel Vasa on 07/02/21.
//

import UIKit
import MobPayments
import MobSettings
import MobAccounts

@available(iOS 13.0, *)
class TabViewController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let navigation1 = UINavigationController()
        navigation1.navigationItem.largeTitleDisplayMode = .always
        navigation1.navigationBar.prefersLargeTitles = true
        
        let navigation2 = UINavigationController()
        navigation2.navigationItem.largeTitleDisplayMode = .always
        navigation2.navigationBar.prefersLargeTitles = true

        let navigation3 = UINavigationController()
        navigation3.navigationItem.largeTitleDisplayMode = .always
        navigation3.navigationBar.prefersLargeTitles = true
        
        let tab1 = Accounts.build(with: navigation1)
        let tabBarItem1 = UITabBarItem()
        tabBarItem1.title = "Accounts"
        tabBarItem1.image = UIImage(systemName: "creditcard")
        tab1.tabBarItem = tabBarItem1
        
        let tab2 = Payments.build(with: navigation2)
        let tabBarItem2 = UITabBarItem()
        tabBarItem2.image = UIImage(systemName: "arrow.branch")
        tabBarItem2.title = "Payments"
        tab2.tabBarItem = tabBarItem2
        
        let tab3 = Settings.build(with: navigation3)
        let tabBarItem3 = UITabBarItem()
        tabBarItem3.title = "Settings"
        tabBarItem3.image = UIImage(systemName: "gear")
        tab3.tabBarItem = tabBarItem3
        
        navigation1.viewControllers = [tab1]
        navigation2.viewControllers = [tab2]
        navigation3.viewControllers = [tab3]
        
        viewControllers = [navigation1, navigation2, navigation3]
        
    }
}
