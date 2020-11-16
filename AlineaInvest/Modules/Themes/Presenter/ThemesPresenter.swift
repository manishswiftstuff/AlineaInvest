//
//  ThemesPresenter.swift
//  AlineaInvest
//
//  Created by Silverlabs on 16/11/20.
//

import Foundation

class ThemesPresenter {
    private let interactor = ThemesInteractor()
    
    func getThemes() -> [ThemesDataModel] {
        interactor.getThemesData()
    }
}
