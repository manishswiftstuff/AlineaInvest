//
//  CategoryViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import XLPagerTabStrip
import Anchorage

class CategoryViewController: UIViewController, IndicatorInfoProvider {
    private let categoryTableView = UITableView()
    private let presenter = CategoryPresenter()
    private var colors = UIColor.colorPallet
    private var categories = [CategoryDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        categories = presenter.getCategories()
        setupTableView()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "Category")
    }

}
extension CategoryViewController {
    func reload(categories: [CategoryDataModel]) {
        self.categories = categories
        categoryTableView.reloadData()
    }
}

private extension CategoryViewController {
    func setupTableView() {
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        categoryTableView.rowHeight = 100
        self.view.addSubview(categoryTableView)
        categoryTableView.leadingAnchor == self.view.leadingAnchor
        categoryTableView.trailingAnchor == self.view.trailingAnchor
        categoryTableView.topAnchor == self.view.topAnchor
        categoryTableView.bottomAnchor == self.view.bottomAnchor
        categoryTableView.backgroundColor = UIColor.viewBackgroundColor
        categoryTableView.separatorStyle = .none
        categoryTableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: "categoryCell")
    }
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell() }
        let category = categories[indexPath.item]
        if colors.isEmpty {
            colors = UIColor.colorPallet
        }
        
        cell.setUpData(color: colors.popLast() ?? .white, imageName: category.categoryImage, title: category.categoryTitle)
        return cell
    }
}
