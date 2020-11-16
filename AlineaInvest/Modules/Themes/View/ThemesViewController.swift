//
//  ThemesViewController.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import XLPagerTabStrip
import Anchorage

class ThemesViewController: UIViewController, IndicatorInfoProvider {
    private let themesCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    private let presenter = ThemesPresenter()
    private var themes = [ThemesDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        themes = presenter.getThemes()
        setupCollectionView()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "Themes")
    }
}

private extension ThemesViewController {
    func setupCollectionView() {
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        themesCollectionView.setCollectionViewLayout(layout, animated: true)
        themesCollectionView.delegate = self
        themesCollectionView.dataSource = self
        self.view.addSubview(themesCollectionView)
        themesCollectionView.leadingAnchor == self.view.leadingAnchor
        themesCollectionView.trailingAnchor == self.view.trailingAnchor
        themesCollectionView.topAnchor == self.view.topAnchor
        themesCollectionView.bottomAnchor == self.view.bottomAnchor
        themesCollectionView.backgroundColor = .white
        themesCollectionView.register(ThemesCollectionViewCell.self, forCellWithReuseIdentifier: "themesCell")
    }
}

extension ThemesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        themes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "themesCell", for: indexPath ) as? ThemesCollectionViewCell else {
            return UICollectionViewCell()
        }
        let theme = themes[indexPath.item]
        cell.setUpData(imageName: theme.themesImage, title: theme.themesTitle)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width/2 - 30
        let height = width
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}

