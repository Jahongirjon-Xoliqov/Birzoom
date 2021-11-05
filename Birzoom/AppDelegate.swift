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
        
        //let vc = UINavigationController(rootViewController: EveryonePDetailedVC(nibName: "EveryonePDetailedVC", bundle: nil))
        //vc.navigationBar.isHidden = true
        //let vc = LovedLessonsVC(nibName: "LovedLessonsVC", bundle: nil)
        let vc = UINavigationController(rootViewController: SignupVC(nibName: "SignupVC", bundle: nil))
        vc.navigationBar.isHidden = true
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

