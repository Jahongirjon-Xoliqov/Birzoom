//
//  LanguageVC.swift
//  Birzoom
//
//  Created by Administrator on 16/09/21.
//

import UIKit

class LanguageVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var helperLabel: UILabel! {
        didSet {
            
            let text = Lang.get(valueFor: .l_lang_helper)
            
            let attr = NSMutableAttributedString(string: text)
            
            let boldRange = (text as NSString).range(of: Lang.get(valueFor: .l_lang_helper_part))
            
            let wholeRange = (text as NSString).range(of: text)
        
            attr.addAttribute(NSAttributedString.Key.font, value: UIFont.font(name: .roboto_regular, size: .r14), range: wholeRange)
            attr.addAttribute(NSAttributedString.Key.font, value: UIFont.font(name: .roboto_bold, size: .r14), range: boldRange)
            attr.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.bStrongGray, range: wholeRange)
            
            
            helperLabel.attributedText = attr
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    
    @IBOutlet weak var chooseLanguageLabel: UILabel! {
        didSet {
            chooseLanguageLabel.numberOfLines = 0
            chooseLanguageLabel.font = .font(name: .roboto_bold, size: .r24)
            chooseLanguageLabel.textColor = .bBlack
            chooseLanguageLabel.text = Lang.get(valueFor: .l_lang_chooseLanguage)
        }
    }
    
    @IBOutlet weak var ruButton: UIButton! {
        didSet {
            ruButton.backgroundColor = .bBackground
            ruButton.layer.masksToBounds = false
            ruButton.layer.cornerRadius = 8
            ruButton.layer.shadowColor = #colorLiteral(red: 0.3411764706, green: 0.3411764706, blue: 0.3411764706, alpha: 1).cgColor
            ruButton.layer.shadowOffset = .init(width: 4, height: 4)
            ruButton.layer.shadowRadius = 6
            ruButton.layer.shadowOpacity = 0.06
            ruButton.setImage(.image(name: .russia), for: .normal)
            ruButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            ruButton.setTitle(Lang.get(valueFor: .b_lang_en), for: .normal)
            ruButton.setTitleColor(.bBlack, for: .normal)
            ruButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
            ruButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            ruButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            ruButton.contentHorizontalAlignment = .leading
            ruButton.imageView?.contentMode = .scaleAspectFit
            
        }
    }
    
    @IBOutlet weak var enButton: UIButton! {
        didSet {
            enButton.backgroundColor = .bBackground
            enButton.layer.masksToBounds = false
            enButton.layer.cornerRadius = 8
            enButton.layer.shadowColor = #colorLiteral(red: 0.3411764706, green: 0.3411764706, blue: 0.3411764706, alpha: 1).cgColor
            enButton.layer.shadowOffset = .init(width: 4, height: 4)
            enButton.layer.shadowRadius = 6
            enButton.layer.shadowOpacity = 0.06
            enButton.setImage(.image(name: .uk), for: .normal)
            enButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            enButton.setTitle(Lang.get(valueFor: .b_lang_ru), for: .normal)
            enButton.setTitleColor(.bBlack, for: .normal)
            enButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
            enButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            enButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            enButton.contentHorizontalAlignment = .leading
            enButton.imageView?.contentMode = .scaleAspectFit
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func enButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) { [self] in
            enButton.backgroundColor = .bSelectionBlue
            ruButton.backgroundColor = .bBackground
            continueButton.backgroundColor = .bBlue
        }
    }
    
    @IBAction func ruButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) { [self] in
            enButton.backgroundColor = .bBackground
            ruButton.backgroundColor = .bSelectionBlue
            continueButton.backgroundColor = .bBlue
        }
    }
    
}
