//
//  UIColorExtension.swift
//  AlineaInvest
//
//  Created by Manish Kumar on 16/11/20.
//

import Foundation
import UIKit

extension UIColor {
    static let colorPallet: [UIColor] = [
        UIColor.systemPink, UIColor.green, UIColor.orange, UIColor.purple, UIColor.cyan
    ]
    
    static var viewBackgroundColor: UIColor {
        UIColor(red: 250/255, green: 251/255, blue: 252/255, alpha: 1)
    }
    
    static var borderColor: UIColor {
        UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
    }
}
