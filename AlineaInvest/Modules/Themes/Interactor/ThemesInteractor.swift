//
//  ThemesInteractor.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation

class ThemesInteractor {
    
    func getThemesData() -> [ThemesDataModel] {
        var themes = [ThemesDataModel]()
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Diversity & Inclusion"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Bold BioTech"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Crypto Central"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "She runs it"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Clean and Green"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Cannabis-ness"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Power it"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Foodie fun"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Art & fashion"))
        themes.append(ThemesDataModel(themesImage: "placeholderImage", themesTitle: "Home is where the heart is"))
        return themes
    }
}
