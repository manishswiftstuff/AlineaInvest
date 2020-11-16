//
//  TrendingInteractor.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation

class TrendingInteractor {
    
    func getTrendingData() -> [TrendingDataModel] {
        var trendingData = [TrendingDataModel]()
        var topGainersSectionData = [TrendingDataModel.SectionData]()
        topGainersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Medifast", trendingSubtext: "MEDI", value: 50.78))
        topGainersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Pinterest", trendingSubtext: "PINS", value: -4.77))
        topGainersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Slack Technologies", trendingSubtext: "WORK", value: -5.99))
        topGainersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Evoqua Water", trendingSubtext: "Aqua", value: 5.99))

        trendingData.append(TrendingDataModel(sectionTitle: "Top Gainers", sectionData: topGainersSectionData))
        
        var topSellersSectionData = [TrendingDataModel.SectionData]()
        topSellersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Slack Technologies", trendingSubtext: "WORK", value: -5.99))
        topSellersSectionData.append(.init(trendingImage: "placeholderImage", trendingTitle: "Evoqua Water", trendingSubtext: "Aqua", value: 5.99))

        trendingData.append(TrendingDataModel(sectionTitle: "Top Sellers", sectionData: topSellersSectionData))

        return trendingData
    }
}
