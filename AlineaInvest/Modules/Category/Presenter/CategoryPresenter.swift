//
//  CategoryPresenter.swift
//  AlineaInvest
//
//  Created by Silverlabs on 16/11/20.
//

import Foundation

class CategoryPresenter {
    private let interactor = CategoryInteractor()
    
    func getCategories() -> [CategoryDataModel] {
        interactor.getCategoryData()
    }
}
