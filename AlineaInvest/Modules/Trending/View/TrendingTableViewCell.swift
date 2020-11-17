//
//  TrendingTableViewCell.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import UIKit
import Anchorage

class TrendingTableViewCell: UITableViewCell {
    private let trendingImageView = UIImageView()
    private let trendingTitleLabel = UILabel()
    private let trendingSubTextLabel = UILabel()
    private let trendingValueLabel = UILabel()
    private let trendingValueView = UIView()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    private func configureView() {
        selectionStyle = .none
        self.addSubview(trendingImageView)
        trendingImageView.centerYAnchor == self.centerYAnchor
        trendingImageView.leadingAnchor == self.leadingAnchor + Margin.large
        trendingImageView.sizeAnchors == CGSize(width: 50, height: 50)
        
        self.addSubview(trendingTitleLabel)
        trendingTitleLabel.topAnchor == trendingImageView.topAnchor
        trendingTitleLabel.leadingAnchor == trendingImageView.trailingAnchor + Margin.small
        trendingTitleLabel.trailingAnchor == self.trailingAnchor - Margin.medium
        trendingTitleLabel.font = Font.font14
        trendingTitleLabel.textColor = .black
        
        self.addSubview(trendingSubTextLabel)
        trendingSubTextLabel.topAnchor == trendingTitleLabel.bottomAnchor + Margin.small
        trendingSubTextLabel.leadingAnchor == trendingImageView.trailingAnchor + Margin.small
        trendingSubTextLabel.trailingAnchor == self.trailingAnchor - Margin.medium
        trendingSubTextLabel.font = Font.font14
        trendingSubTextLabel.textColor = .gray
        
        self.addSubview(trendingValueView)
        trendingValueView.centerYAnchor == self.centerYAnchor
        trendingValueView.trailingAnchor == self.trailingAnchor - Margin.medium
        trendingValueView.heightAnchor == 24
        trendingValueView.backgroundColor = .green
        trendingValueView.layer.cornerRadius = 12
        trendingValueView.clipsToBounds = true
        
        trendingValueView.addSubview(trendingValueLabel)
        trendingValueLabel.centerYAnchor == trendingValueView.centerYAnchor
        trendingValueLabel.trailingAnchor == trendingValueView.trailingAnchor - Margin.medium
        trendingValueLabel.leadingAnchor == trendingValueView.leadingAnchor + Margin.medium
        trendingValueLabel.font = Font.font14
        trendingValueLabel.textColor = .white
                
        let separator = UIView()
        self.addSubview(separator)
        separator.bottomAnchor == self.bottomAnchor
        separator.leadingAnchor == self.leadingAnchor + Margin.medium
        separator.trailingAnchor == self.trailingAnchor - Margin.medium
        separator.heightAnchor == 1
        separator.backgroundColor = UIColor.borderColor
    }

    func setUpData(data: TrendingDataModel.SectionData) {
        trendingImageView.image = UIImage(named: data.trendingImage)
        trendingTitleLabel.text = data.trendingTitle
        trendingSubTextLabel.text = data.trendingSubtext
        trendingValueLabel.text = String(data.value)
        trendingValueView.backgroundColor = data.value > 0 ? .green : .orange
    }
}
