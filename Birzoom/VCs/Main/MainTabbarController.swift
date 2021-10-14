//
//  MainTabbarController.swift
//  Birzoom
//
//  Created by Administrator on 11/10/21.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .bBlue
        tabBar.isTranslucent = false
        tabBar.barTintColor = .bHomeNavBackground
        
        let homeVC = UINavigationController(rootViewController: HomeVC(nibName: "HomeVC", bundle: nil))
        let homeTabbarItem = UITabBarItem(title: "Asosiy", image: UIImage(named: "house"), tag: 0)
        homeVC.tabBarItem = homeTabbarItem
        homeVC.navigationBar.isHidden = true
        
        
        let podcastVC = UINavigationController(rootViewController: PodcastsVC(nibName: "PodcastsVC", bundle: nil))
        let podcastTabbarItem = UITabBarItem(title: "Podcast", image: UIImage(named: "podcast"), tag: 1)
        podcastVC.tabBarItem = podcastTabbarItem
        podcastVC.navigationBar.isHidden = true
        
        let profileVC = UINavigationController(rootViewController: ProfilVC(nibName: "ProfilVC", bundle: nil))
        let profileTabbarItem = UITabBarItem(title: "Profil", image: UIImage(named: "person"), tag: 2)
        profileVC.tabBarItem = profileTabbarItem
        profileVC.navigationBar.isHidden = true
        
        let gamesVC = UINavigationController(rootViewController: GamesTabVC(nibName: "GamesTabVC", bundle: nil))
        let gamesTabbarItem = UITabBarItem(title: "Games", image: UIImage(named: "game"), tag: 3)
        gamesVC.tabBarItem = gamesTabbarItem
        gamesVC.navigationBar.isHidden = true
        gamesVC.hidesBottomBarWhenPushed = true
        
        setViewControllers([
            
            homeVC,
            podcastVC,
            profileVC,
            gamesVC
        
        ], animated: true)
        
        
    }

}
