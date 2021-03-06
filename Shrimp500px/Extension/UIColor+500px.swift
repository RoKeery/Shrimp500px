//
//  UIColor+500px.swift
//  Shrimp500px
//
//  Created by 振亮 孙 on 16/2/18.
//  Copyright © 2016年 papa.studio. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func colorWithHex(hex :UInt, alpha: CGFloat = 1.0) -> UIColor {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat((hex * 0x0000FF) >> 0) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: alpha)
    }
}