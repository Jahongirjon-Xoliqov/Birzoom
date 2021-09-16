//
//  SignupVC.swift
//  Birzoom
//
//  Created by Administrator on 14/09/21.
//

import UIKit
import IQKeyboardManagerSwift

class SignupVC: UIViewController {
    
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var signupLabel: UILabel! {
        didSet {
            signupLabel.text = Lang.get(valueFor: .l_reg_signup)
            signupLabel.font = .font(name: .roboto_medium, size: .r24)
            signupLabel.textColor = UIColor.bBlack
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var signinLabel: UILabel! {
        didSet {
            signinLabel.font = .font(name: .roboto_regular, size: .r15)
            signinLabel.textColor = .bStrongGray
            let range = (Lang.get(valueFor: .l_reg_signin) as NSString).range(of: Lang.get(valueFor: .l_reg_signin_tap))
            let attstring = NSMutableAttributedString(string: Lang.get(valueFor: .l_reg_signin))
            attstring.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.bTextBlue, range: range)
            signinLabel.attributedText = attstring
            signinLabel.isUserInteractionEnabled = true
        }
    }
    
    @IBOutlet var userInfoTextFields: [UITextField]! {
        didSet {
            let ps = [
                Lang.get(valueFor: .p_reg_name),
                Lang.get(valueFor: .p_reg_surename),
                Lang.get(valueFor: .p_reg_number)
            ]
            for i in 0..<userInfoTextFields.count {
                userInfoTextFields[i].activateUI(for: .registration)
                userInfoTextFields[i].attributedPlaceholder = .bPlaceHolder(text: ps[i])
                userInfoTextFields[i].font = .font(name: .roboto_regular, size: .r15)
                userInfoTextFields[i].textColor = .bBlack
                userInfoTextFields[i].delegate = self
            }
        }
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ///initkeyboard
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ///deinitkeyboard
        IQKeyboardManager.shared.enable = false
    }
    
    
    
    
    @IBAction func signinIsTriggered(_ sender: UITapGestureRecognizer) {
        
        let range = (Lang.get(valueFor: .l_reg_signin) as NSString).range(of: Lang.get(valueFor: .l_reg_signin_tap))
        
        if sender.didTapAttributedTextInLabel(label: signinLabel, inRange: range) {
            ///move to sign in page
            navigate(to: .signin)
        }
        
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        ///this back button moves to welcome page
    
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
        if isUserInfoValid() {
            ///open up next page
            navigate(to: .otp)
        } else {
            ///show alert
        }
    }
    
    
    
}


extension SignupVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {return}
        
        ///validation
        ///making borders color
        textField.isValid(!text.isEmpty)
        ///activating/disactivating continue button
        continueButton.backgroundColor = isUserInfoValid() ? .bBlue : .bGray
        
    }
    ///+998 99 999 99 99
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == userInfoTextFields[2] {
            
            guard let oldText = textField.text else {return true}
            
            if oldText.count == 17 && string.isEmpty {
                return true
            } else
            
            if oldText.count == 17 {
                userInfoTextFields[2].resignFirstResponder()
                return false
            } else
            
            if oldText.count == 16 && string.isEmpty {
                return true
            }
            
            if oldText.count == 16 {
                textField.text = oldText + string
                userInfoTextFields[2].resignFirstResponder()
                return false
            }
            
            if (oldText.count == 4 || oldText.count == 7 || oldText.count == 11 || oldText.count == 14) && !string.isEmpty {
                textField.text = oldText + " "
            }
            
            return true
            
        }
        
        return true
    }
    
    fileprivate
    func isUserInfoValid() -> Bool {
        
        guard let name = userInfoTextFields[0].text, let surname = userInfoTextFields[1].text, let phone = userInfoTextFields[2].text else {
            continueButton.backgroundColor = .bGray
            return false
        }
        
        if name.isEmpty {
            print("name is empty")
            return false
        } else
        
        if surname.isEmpty {
            print("surename is empty")
            return false
        } else
        
        if phone.isEmpty {
            print("phone number is empty")
            return false
        }
        
        return true
    }
}
