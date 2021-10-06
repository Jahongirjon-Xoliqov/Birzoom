//
//  ModifyNotificationsVC.swift
//  Birzoom
//
//  Created by Administrator on 06/10/21.
//

import UIKit

class ModifyNotificationsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var notifLabel: UILabel! {
        didSet {
            notifLabel.designAsTopTitle()
            notifLabel.text = Lang.get(valueFor: .l_settings_notifications)
        }
    }
    
    @IBOutlet weak var lessonsButton: UIButton! {
        didSet {
            lessonsButton.design(as: .settingsBlack)
            lessonsButton.setTitle(Lang.get(valueFor: .b_settings_lessons), for: .normal)
        }
    }
    
    @IBOutlet weak var newsButton: UIButton! {
        didSet {
            newsButton.design(as: .settingsBlack)
            newsButton.setTitle(Lang.get(valueFor: .b_settings_news), for: .normal)
        }
    }
    
    @IBOutlet weak var messagesButton: UIButton! {
        didSet {
            messagesButton.design(as: .settingsBlack)
            messagesButton.setTitle(Lang.get(valueFor: .b_settings_messages), for: .normal)
        }
    }
    
    @IBOutlet weak var lessonsSwitch: UISwitch! {
        didSet {
            lessonsSwitch.isOn = Cache.getLessonNotifications()
        }
    }
    
    @IBOutlet weak var newsSwitch: UISwitch! {
        didSet {
            newsSwitch.isOn = Cache.getNewsNotifications()
        }
    }
    
    @IBOutlet weak var messagesSwitch: UISwitch! {
        didSet {
            messagesSwitch.isOn = Cache.getMessagesNotifications()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func lessonsIsSwitched(_ sender: UISwitch) {
        Cache.saveLessonNotifications(as: sender.isOn)
    }
    
    @IBAction func newsIsSwitched(_ sender: UISwitch) {
        Cache.saveNewsNotifications(as: sender.isOn)
    }
    
    @IBAction func messagesIsSwitched(_ sender: UISwitch) {
        Cache.saveMessagesNotifications(as: sender.isOn)
    }
    
    

}
