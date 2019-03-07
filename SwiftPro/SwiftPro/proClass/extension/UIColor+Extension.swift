//
//  UIColor+Extension.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String) {
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alph: CGFloat = 1.0
        
        var nHex: String = hex
        
        if hex.hasPrefix("#") {
            let index = nHex.index(nHex.startIndex, offsetBy: 1)
            nHex = String(nHex[index...])
        }
        
        let scanner = Scanner(string: nHex)
        var hexValue: CUnsignedLongLong = 0
        if scanner.scanHexInt64(&hexValue) {
            switch (nHex.count) {
            case 3:
                red = CGFloat((hexValue & 0xF00) >> 8) / 15.0
                green = CGFloat((hexValue & 0x0F0) >> 4) / 15.0
                blue = CGFloat((hexValue & 0x00F)) / 15.0
            case 4:
                red = CGFloat((hexValue & 0xF000) >> 12) / 15.0
                green = CGFloat((hexValue & 0x0F00) >> 8) / 15.0
                blue = CGFloat((hexValue & 0x00F0) >> 4) / 15.0
                alph = CGFloat((hexValue & 0x000F)) / 15.0
            case 6:
                red = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                green = CGFloat((hexValue & 0x00FF00) >> 8) / 255.0
                blue = CGFloat((hexValue & 0x0000FF)) / 255.0
            case 8:
                red = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                blue = CGFloat((hexValue & 0x0000FF00) >> 8) / 255.0
                alph = CGFloat((hexValue & 0x000000FF)) / 255.0
            default:
                break
            }
        }
        
        
        
        
        
        self.init(red: red, green: green, blue: blue, alpha: alph)
    }
}
