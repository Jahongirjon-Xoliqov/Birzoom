//
//  NewPasswordVC.swift
//  Birzoom
//
//  Created by Administrator on 15/09/21.
//

import UIKit
import IQKeyboardManagerSwift

class NewPasswordVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var enterPasswordLabel: UILabel! {
        didSet {
            enterPasswordLabel.text = Lang.get(valueFor: .l_signin)
            enterPasswordLabel.font = .font(name: .roboto_medium, size: .r24)
            enterPasswordLabel.textColor = UIColor.bBlack
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var passwordTextField: PasswordTextField! {
        didSet {
            passwordTextField.activateUI(for: .password)
            passwordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_newpass))
            passwordTextField.font = .font(name: .roboto_regular, size: .r15)
            passwordTextField.textColor = .bBlack
            passwordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var repeatPasswordTextField: PasswordTextField! {
        didSet {
            repeatPasswordTextField.activateUI(for: .password)
            repeatPasswordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_newpass_repeat))
            repeatPasswordTextField.font = .font(name: .roboto_regular, size: .r15)
            repeatPasswordTextField.textColor = .bBlack
            repeatPasswordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var eyeButton: UIButton! {
        didSet {
            eyeButton.setTitle("", for: .normal)
            eyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            eyeButton.tintColor = .bEyeGay
            eyeButton.isHidden = false
        }
    }
    
    @IBOutlet weak var repeatEyeButton: UIButton! {
        didSet {
            repeatEyeButton.setTitle("", for: .normal)
            repeatEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            repeatEyeButton.tintColor = .bEyeGay
            repeatEyeButton.isHidden = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //init keyboard
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //deinit keyboard
        IQKeyboardManager.shared.enable = false
    }

    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
        if isUserInfoValid() {
            ///open up language choosing page
            navigate(to: .languageChoose)
            
        } else {
            ///show alert
            repeatPasswordTextField.isValid(false)
        }
        
    }
    
    @IBAction func eyeButtonTapped(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
            eyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            eyeButton.setImage(UIImage.image(name: .eye), for: .normal)
        }
    }
    
    @IBAction func reapeatEyeButtonTapped(_ sender: UIButton) {
        if repeatPasswordTextField.isSecureTextEntry {
            repeatPasswordTextField.isSecureTextEntry = false
            repeatEyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
        } else {
            repeatPasswordTextField.isSecureTextEntry = true
            repeatEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
        }
    }
    

}


extension NewPasswordVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        continueButton.backgroundColor = .bGray
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {return}
        
        
        if let new = passwordTextField.text, let repe = repeatPasswordTextField.text {
            ///validation
            ///making borders color
            if !repe.isEmpty {
                textField.isValid(!text.isEmpty && new == repe)
            }
        } else {
            textField.isValid(false)
        }
        
        ///activating/disactivating continue button
        continueButton.backgroundColor = isUserInfoValid() ? .bBlue : .bGray
        
        if textField == passwordTextField {
            eyeButton.isHidden = textField == passwordTextField && text.isEmpty
        }
          
        if textField == repeatPasswordTextField {
            repeatEyeButton.isHidden = textField == repeatPasswordTextField && text.isEmpty
        }
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == passwordTextField {
            ///hiding or showiing eye button
            if let text = textField.text {
                eyeButton.isHidden = text.count == 1 && string.isEmpty
            }
            
        }
        
        if textField == repeatPasswordTextField {
            ///hiding or showiing eye button
            if let text = textField.text {
                repeatEyeButton.isHidden = text.count == 1 && string.isEmpty
            }
            
        }
        
        
        return true
    }
    
    fileprivate
    func isUserInfoValid() -> Bool {
        
        guard let repeatTF = repeatPasswordTextField.text, let passwordTF = passwordTextField.text else {
            continueButton.backgroundColor = .bGray
            return false
        }
        
        if repeatTF.isEmpty {
            return false
        }
        
        if passwordTF.isEmpty {
            return false
        }
        
        return repeatTF == passwordTF
    }
    
    
}
