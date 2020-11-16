//
//  TrendingDataModel.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation

struct TrendingDataModel {
    let sectionTitle: String
    let sectionData: [SectionData]
    
    struct SectionData {
        let trendingImage: String
        let trendingTitle: String
        let trendingSubtext: String
        let value: Double
    }
}
