//
//  AppDelegate.swift
//  class2
//
//  Created by Seyeon An on 2020/07/05.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = FriendListViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

