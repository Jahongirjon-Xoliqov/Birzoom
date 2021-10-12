//
//  AppDelegate.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
        let vc = MainTabbarController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

