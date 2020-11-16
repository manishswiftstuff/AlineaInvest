//
//  TrendingViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import XLPagerTabStrip
import Anchorage

class TrendingViewController: UIViewController, IndicatorInfoProvider {
    private let trendingTableView = UITableView()
    private let presenter = TrendingPresenter()
    private var trendingData = [TrendingDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.trendingData = presenter.getTrendingData()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupTableView()

    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "Trending")
    }
}

private extension TrendingViewController {
    func setupTableView() {
        trendingTableView.delegate = self
        trendingTableView.dataSource = self
        trendingTableView.rowHeight = 80
        trendingTableView.sectionHeaderHeight = 40
        self.view.addSubview(trendingTableView)
        trendingTableView.leadingAnchor == self.view.leadingAnchor
        trendingTableView.trailingAnchor == self.view.trailingAnchor
        trendingTableView.topAnchor == self.view.topAnchor
        trendingTableView.bottomAnchor == self.view.bottomAnchor
        trendingTableView.backgroundColor = UIColor.viewBackgroundColor
        trendingTableView.separatorStyle = .none
        trendingTableView.clipsToBounds = true
        trendingTableView.register(TrendingTableViewCell.self, forCellReuseIdentifier: "trendingCell")
    }
}

extension TrendingViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        trendingData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trendingData[section].sectionData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        trendingData[section].sectionTitle
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "trendingCell", for: indexPath) as? TrendingTableViewCell else { return UITableViewCell() }
        let data = trendingData[indexPath.section].sectionData[indexPath.item]
        cell.setUpData(data: data)
        return cell
    }
}

