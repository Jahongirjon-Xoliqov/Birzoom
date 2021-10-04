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
        
        let vc = ProfilVC(nibName: "ProfilVC", bundle: nil)
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.isHidden = true
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

