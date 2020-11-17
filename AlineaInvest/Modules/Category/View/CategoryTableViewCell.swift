//
//  CategoryTableViewCell.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import Anchorage

class CategoryTableViewCell: UITableViewCell {
    private let categoryImageView = UIImageView()
    private let categoryTitleLabel = UILabel()
    private let topView = UIView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
    }
    
    private func configureView() {
        selectionStyle = .none
        self.addSubview(topView)
        topView.leadingAnchor == self.leadingAnchor + Margin.medium
        topView.trailingAnchor == self.trailingAnchor - Margin.medium
        topView.centerYAnchor == self.centerYAnchor
        topView.heightAnchor == 80
        topView.backgroundColor = UIColor.colorPallet.randomElement()
        topView.layer.cornerRadius = 40
        
        topView.addSubview(categoryImageView)
        categoryImageView.centerYAnchor == topView.centerYAnchor
        categoryImageView.leadingAnchor == topView.leadingAnchor + Margin.large
        categoryImageView.sizeAnchors == CGSize(width: 50, height: 50)
        categoryImageView.contentMode = .center
        categoryImageView.tintColor = .white
        categoryImageView.layer.cornerRadius = 25
        categoryImageView.layer.borderWidth = 2
        categoryImageView.layer.borderColor = UIColor.white.cgColor
        categoryImageView.backgroundColor = .clear
        categoryImageView.clipsToBounds = true
        
        topView.addSubview(categoryTitleLabel)
        categoryTitleLabel.centerYAnchor == topView.centerYAnchor
        categoryTitleLabel.leadingAnchor == categoryImageView.trailingAnchor + Margin.large
        categoryTitleLabel.trailingAnchor == topView.trailingAnchor - Margin.medium
        categoryTitleLabel.textColor = .white
        categoryTitleLabel.font = Font.font14
                
        let separator = UIView()
        self.addSubview(separator)
        separator.bottomAnchor == self.bottomAnchor
        separator.leadingAnchor == self.leadingAnchor + Margin.medium
        separator.trailingAnchor == self.trailingAnchor - Margin.medium
        separator.heightAnchor == 1
        separator.backgroundColor = UIColor.borderColor
    }

    func setUpData(color: UIColor, imageName: String, title: String) {
        topView.backgroundColor = color
        categoryTitleLabel.text = title
        categoryImageView.image = UIImage(named: imageName)
    }
}
