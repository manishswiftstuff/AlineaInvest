//
//  ExploreViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import Anchorage

class ExploreViewController: UIViewController {
    let topView = UIView()
    let pagerVC = PagerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUI()
    }
}

private extension ExploreViewController {
    func setUI() {
        self.view.addSubview(topView)
        topView.topAnchor == self.view.safeAreaLayoutGuide.topAnchor 
        topView.leadingAnchor == self.view.leadingAnchor
        topView.trailingAnchor == self.view.trailingAnchor
        topView.bottomAnchor == self.view.bottomAnchor + 20
        
        pagerVC.view.frame = topView.bounds
        topView.addSubview(pagerVC.view)
        self.addChild(pagerVC)
        pagerVC.didMove(toParent: self)
    }
}
