//
//  TrendingPresenter.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation

class TrendingPresenter {
    private let interactor = TrendingInteractor()
    
    func getTrendingData() -> [TrendingDataModel] {
        interactor.getTrendingData()
    }
}
