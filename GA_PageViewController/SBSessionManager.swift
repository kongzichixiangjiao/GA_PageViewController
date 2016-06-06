//
//  SBSessionManager.swift
//  shenbian-1.0.1
//
//  Created by weimiao on 15-2-7.
//  Copyright (c) 2015年 shenbian. All rights reserved.
//

import UIKit
/*
            ******** 随机色    ********
            ******** 颜色     ********
            ******** 随机颜色  ********
*/
class SBSessionManager {
    
    let themeColorValues: [UInt32] = [0xbc6141, 0xd7003f, 0xff6e20, 0x008d56, 0x007f76, 0x489cff, 0x3758a7, 0xa8ce31, 0xecd343, 0xb08826, 0x7a4028, 0x614d60, 0xf27cb0, 0xbf4422, 0x352d15, 0x6abd79, 0xff0000, 0xff6d6d, 0xdd35cf, 0xbc2a7c]

//    let themeColorValues: [UInt32] = [0xdf0000, 0xff6e20, 0x2bb58a, 0x489cff, 0xf27cb0, 0xdd35cf, 0xbc6141]
    // 2015.9.25
//    let themeColorValues: [UInt32] = [0xff6e20, 0x2bb58a, 0x489cff, 0xbc6141]

    var randomThemeColor: UIColor {
        let colorValue = themeColorValues[Int(arc4random_uniform(UInt32(themeColorValues.count)))]
        let red = Float((colorValue >> 16) & 255) / 255
        let green = Float((colorValue >> 8) & 255) / 255
        let blue = Float(colorValue & 255) / 255
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
}
