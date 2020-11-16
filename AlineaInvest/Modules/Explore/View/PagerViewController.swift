//
//  PagerViewController.swift
//  AlineaInvest
//
//  Created by Silverlabs on 16/11/20.
//

import UIKit
import XLPagerTabStrip
import Anchorage

class PagerViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        self.edgesForExtendedLayout = UIRectEdge()

        settings.style.selectedBarHeight = 2
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.selectedBarBackgroundColor = UIColor.purple
        settings.style.buttonBarItemTitleColor = UIColor.purple
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 14)
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        super.viewDidLoad()
        self.view.insertSubview(UIView(), at: 0)
        self.containerView.contentInsetAdjustmentBehavior = .never
        self.containerView.contentInset = .zero
    }
    
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let trendingVC = TrendingViewController()
        let themesVC = ThemesViewController()
        let categoryVC = CategoryViewController()
        return [categoryVC, themesVC, trendingVC]
    }
    
}
