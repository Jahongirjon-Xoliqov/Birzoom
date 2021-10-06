//
//  ModifyLanguageVC.swift
//  Birzoom
//
//  Created by Administrator on 06/10/21.
//

import UIKit

class ModifyLanguageVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var appLanguageLabel: UILabel! {
        didSet {
            appLanguageLabel.designAsTopTitle()
            appLanguageLabel.text = Lang.get(valueFor: .l_settings_appLanguage)
        }
    }
    
    @IBOutlet var checkImages: [UIImageView]! {
        didSet {
            checkImages.forEach { (img) in
                img.isHidden = true
            }
            switch Cache.getAppLanguage() {
            case .uz: checkImages[0].isHidden = false
            case .ru: checkImages[2].isHidden = false
            case .en: checkImages[1].isHidden = false
            }
        }
    }
    
    @IBOutlet var langTopLabels: [UILabel]! {
        didSet {
            langTopLabels[0].text = Lang.get(valueFor: .l_settings_lang_uz)
            langTopLabels[0].font = .font(name: .roboto_medium, size: .r16)
            langTopLabels[0].textColor = .bBlack
            
            langTopLabels[1].text = Lang.get(valueFor: .l_settings_lang_en)
            langTopLabels[1].font = .font(name: .roboto_medium, size: .r16)
            langTopLabels[1].textColor = .bBlack
            
            langTopLabels[2].text = Lang.get(valueFor: .l_settings_lang_ru)
            langTopLabels[2].font = .font(name: .roboto_medium, size: .r16)
            langTopLabels[2].textColor = .bBlack
        }
    }
    
    @IBOutlet var langBottomLabels: [UILabel]! {
        didSet {
            langBottomLabels[0].text = Lang.get(valueFor: .l_settings_lang_uz_uz)
            langBottomLabels[0].font = .font(name: .roboto_medium, size: .r14)
            langBottomLabels[0].textColor = .bHomeNavTint
            
            langBottomLabels[1].text = Lang.get(valueFor: .l_settings_lang_en_uz)
            langBottomLabels[1].font = .font(name: .roboto_medium, size: .r14)
            langBottomLabels[1].textColor = .bHomeNavTint
            
            langBottomLabels[2].text = Lang.get(valueFor: .l_settings_lang_ru_uz)
            langBottomLabels[2].font = .font(name: .roboto_medium, size: .r14)
            langBottomLabels[2].textColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var saveButton: UIButton! {
        didSet {
            saveButton.design(as: .mainGray)
            saveButton.setTitle(Lang.get(valueFor: .b_save), for: .normal)
            saveButton.backgroundColor = .bBlue
        }
    }
    
    
    var tempLang: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
    @IBAction func langButtonTapped(_ sender: UIButton) {
        tempLang = sender.tag
        for i in 0..<checkImages.count {
            checkImages[i].isHidden = !(sender.tag == i)
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if tempLang == 0 {
            Cache.save(appLanguage: .uz)
        }
        if tempLang == 1 {
            Cache.save(appLanguage: .en)
        }
        if tempLang == 2 {
            Cache.save(appLanguage: .ru)
        }
        navigateBackward()
    }
    
    
}
