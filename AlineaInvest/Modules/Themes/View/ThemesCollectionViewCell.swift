//
//  ThemesCollectionViewCell.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import Anchorage

class ThemesCollectionViewCell: UICollectionViewCell {
    private let themeImageView = UIImageView()
    private let themeTitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    private func configureView() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.backgroundColor = UIColor.viewBackgroundColor
        self.layer.borderColor = UIColor.borderColor.cgColor
        
        self.addSubview(themeImageView)
        themeImageView.centerXAnchor == self.centerXAnchor
        themeImageView.topAnchor == self.topAnchor + Margin.small
        themeImageView.widthAnchor == self.widthAnchor * 0.6
        themeImageView.heightAnchor == self.heightAnchor * 0.6
        
        self.addSubview(themeTitleLabel)
        themeTitleLabel.topAnchor == themeImageView.bottomAnchor + Margin.small
        themeTitleLabel.leadingAnchor == self.leadingAnchor + Margin.medium
        themeTitleLabel.trailingAnchor == self.trailingAnchor - Margin.medium
        themeTitleLabel.bottomAnchor == self.bottomAnchor - Margin.small
        themeTitleLabel.textAlignment = .center
        themeTitleLabel.font = Font.font14
        themeTitleLabel.textColor = .black
    }
    
    func setUpData(imageName: String, title: String) {
        themeTitleLabel.text = title
        themeImageView.image = UIImage(named: imageName)
    }
}
