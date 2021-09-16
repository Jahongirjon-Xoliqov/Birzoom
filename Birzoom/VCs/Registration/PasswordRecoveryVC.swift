//
//  PasswordRecoveryVC.swift
//  Birzoom
//
//  Created by Administrator on 15/09/21.
//

import UIKit
import IQKeyboardManagerSwift

class PasswordRecoveryVC: UIViewController {

    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var passwordForgetLabel: UILabel! {
        didSet {
            passwordForgetLabel.text = Lang.get(valueFor: .l_pass_forget)
            passwordForgetLabel.font = .font(name: .roboto_medium, size: .r24)
            passwordForgetLabel.textColor = UIColor.bBlack
        }
    }
    
    @IBOutlet weak var instructorLabel: UILabel! {
        didSet {
            
            let style = NSMutableParagraphStyle()
            style.alignment = .center
            style.lineSpacing = 1
            style.minimumLineHeight = 22
            
            let attributes = NSMutableAttributedString(string: Lang.get(valueFor: .l_pass_instructor), attributes: [
                NSAttributedString.Key.paragraphStyle: style,
                NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15),
                NSAttributedString.Key.foregroundColor: UIColor.bGray1
            ])
            
            instructorLabel.attributedText = attributes
            
        }
    }
    
    @IBOutlet weak var phoneTextField: UITextField! {
        didSet {
            phoneTextField.activateUI(for: .registration)
            phoneTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_reg_number))
            phoneTextField.font = .font(name: .roboto_regular, size: .r15)
            phoneTextField.textColor = .bBlack
            phoneTextField.delegate = self
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var signupButton: UIButton! {
        didSet {
            signupButton.setTitle(Lang.get(valueFor: .l_pass_signup), for: .normal)
            signupButton.titleLabel!.font = .font(name: .roboto_regular, size: .r15)
            signupButton.setTitleColor(.bTextBlue, for: .normal)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ///show keybaord
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ///dismiss keybaord
        IQKeyboardManager.shared.enable = false
    }
    
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        if isUserInfoValid() {
            ///open up next page
            navigate(to: .newpassword)
        } else {
            ///show alert
        }
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        navigateBackToSignup()
    }
    
    
    
    
    
}


extension PasswordRecoveryVC: UITextFieldDelegate {
    
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
        
        if textField == phoneTextField {
            
            guard let oldText = textField.text else {return true}
            
            if oldText.count == 17 && string.isEmpty {
                return true
            } else
            
            if oldText.count == 17 {
                phoneTextField.resignFirstResponder()
                return false
            } else
            
            if oldText.count == 16 && string.isEmpty {
                return true
            }
            
            if oldText.count == 16 {
                textField.text = oldText + string
                phoneTextField.resignFirstResponder()
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
        
        guard let phone = phoneTextField.text else {
            continueButton.backgroundColor = .bGray
            return false
        }
        
        if phone.isEmpty {
            return false
        }
        
        let phone2 = phone.replacingOccurrences(of: " ", with: "")
        print(phone2)
        return phone2.count == 13

    }
    
    //+998 99 999 99 99
}
