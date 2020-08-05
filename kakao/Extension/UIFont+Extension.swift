//
//  UIFont+Extension.swift
//  Class2
//
//  Created by 김동욱 on 2020/07/26.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//
import UIKit
extension UIFont {
    static var defaultFont: UIFont {
        return UIFont.systemFont(ofSize: 12)
    }
    static var defaultBold: UIFont {
        return UIFont.systemFont(ofSize: 12, weight: .bold)
    }
    static var defaultLargeFont: UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
    static var defaultLargeBold: UIFont {
        return UIFont.systemFont(ofSize: 14, weight: .bold)
    }
}
