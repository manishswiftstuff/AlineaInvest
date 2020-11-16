//
//  CategoryInteractor.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation

class CategoryInteractor {
    
    func getCategoryData() -> [CategoryDataModel] {
        var categoriesData = [CategoryDataModel]()
        categoriesData.append(CategoryDataModel(categoryImage: "placeholderImage", categoryTitle: "Stocks"))
        categoriesData.append(CategoryDataModel(categoryImage: "placeholderImage", categoryTitle: "ETFs"))
        categoriesData.append(CategoryDataModel(categoryImage: "placeholderImage", categoryTitle: "Crypto"))
        return categoriesData
    }
}
