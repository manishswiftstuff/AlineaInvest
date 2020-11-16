//
//  ExploreViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import XLPagerTabStrip

class ExploreViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        setPagerSettings()
        super.viewDidLoad()
    }
    
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let trendingVC = TrendingViewController()
        let themesVC = ThemesViewController()
        let categoryVC = CategoryViewController()
        return [categoryVC, themesVC, trendingVC]
    }
}

private extension ExploreViewController {
    func setPagerSettings() {
        settings.style.selectedBarHeight = 2
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarMinimumLineSpacing = 10
        settings.style.selectedBarBackgroundColor = UIColor.purple
        settings.style.buttonBarItemTitleColor = UIColor.purple
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 14)
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
    }
    
}
