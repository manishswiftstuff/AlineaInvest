//
//  TabBarViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit

class TabBarViewController: UITabBarController {

    var controllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarItems()
    }
}

private extension TabBarViewController {
    func setUpTabBarItems() {
        self.tabBar.tintColor = UIColor(red: 77/255, green: 84/255, blue: 200/255, alpha: 1)
        setHomeTab()
        setExploreTab()
        self.viewControllers = controllers
        self.selectedIndex = 0
    }
    
    func setHomeTab() {
        let item = HomeViewController()
        let icon = UITabBarItem(title: nil, image: UIImage(named: "ic_home"), tag: 0)
        item.tabBarItem = icon
        controllers.append(item)
    }
    
    func setExploreTab() {
        let item = ExploreViewController()
        let icon = UITabBarItem(title: nil, image: UIImage(named: "ic_explore"), tag: 0)
        item.tabBarItem = icon
        controllers.append(item)
    }
}

