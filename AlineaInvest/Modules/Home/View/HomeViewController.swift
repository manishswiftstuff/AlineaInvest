//
//  HomeViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import Anchorage

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .white
        let gotoExploreLabel = UILabel()
        self.view.addSubview(gotoExploreLabel)
        gotoExploreLabel.centerAnchors == self.view.centerAnchors
        gotoExploreLabel.text = "Go to explore tab"
    }
}
