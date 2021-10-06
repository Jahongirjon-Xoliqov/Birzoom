//
//  SettingsVC.swift
//  Birzoom
//
//  Created by Administrator on 06/10/21.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var settingsLabel: UILabel! {
        didSet {
            settingsLabel.designAsTopTitle()
            settingsLabel.text = Lang.get(valueFor: .l_settings)
        }
    }
    
    @IBOutlet var optionButtons: [UIButton]! {
        didSet {
            let titles = Lang.getSettingsOptionTitles()
            for i in 0..<optionButtons.count {
                optionButtons[i].setTitle(titles[i], for: .normal)
                optionButtons[i].design(as: .settingsBlack)
            }
        }
    }
    
    @IBOutlet weak var modeSwitch: UISwitch! {
        didSet {
            if let app = UIApplication.shared.delegate as? AppDelegate, let window = app.window {
                if #available(iOS 13.0, *) {
                    modeSwitch.isOn = window.overrideUserInterfaceStyle == .dark
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
    @IBAction func optionsTapped(_ sender: UIButton) {
        print(sender.tag)
        
        if sender.tag == 3 {
            navigate(to: .notificationsModify)
        }
        
    }
    
    @IBAction func modeIsSwitched(_ sender: UISwitch) {
       
        if let app = UIApplication.shared.delegate as? AppDelegate, let window = app.window {
            if sender.isOn {
                if #available(iOS 13.0, *) {
                    window.overrideUserInterfaceStyle = .dark
                } else {
                    // Fallback on earlier versions
                    openSettings()
                }
            } else {
                if #available(iOS 13.0, *) {
                    window.overrideUserInterfaceStyle = .light
                } else {
                    // Fallback on earlier versions
                    openSettings()
                }
            }
        }
        
    }
    
    fileprivate
    func openSettings() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }

        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl)
        } else {
            //cannot change mode
        }
    }
    
    
}
