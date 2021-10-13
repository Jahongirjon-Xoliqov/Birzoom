//
//  SigninVC.swift
//  Birzoom
//
//  Created by Administrator on 15/09/21.
//

import UIKit
import IQKeyboardManagerSwift

class SigninVC: UIViewController {

    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var signinLabel: UILabel! {
        didSet {
            signinLabel.text = Lang.get(valueFor: .l_signin)
            signinLabel.font = .font(name: .roboto_medium, size: .r24)
            signinLabel.textColor = UIColor.bBlack
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var forgetButton: UIButton! {
        didSet {
            forgetButton.setTitle(Lang.get(valueFor: .l_signin_forget), for: .normal)
            forgetButton.titleLabel!.font = .font(name: .roboto_regular, size: .r15)
            forgetButton.setTitleColor(.bTextBlue, for: .normal)
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
    
    @IBOutlet weak var passwordTextField: PasswordTextField! {
        didSet {
            passwordTextField.activateUI(for: .password)
            passwordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_signin_password))
            passwordTextField.font = .font(name: .roboto_regular, size: .r15)
            passwordTextField.textColor = .bBlack
            passwordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var eyeButton: UIButton! {
        didSet {
            eyeButton.setTitle("", for: .normal)
            eyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            eyeButton.tintColor = .bEyeGay
            eyeButton.isHidden = true
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
            ///open up next page
            ///navigate(to: .home)
            let vc = MainTabbarController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        } else {
            ///show alert
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
    
    @IBAction func forgetButtonTapped(_ sender: UIButton) {
        navigate(to: .password)
    }
    
    
    
}

extension SigninVC: UITextFieldDelegate {
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {return}
        
        ///validation
        ///making borders color
        textField.isValid(!text.isEmpty)
        ///activating/disactivating continue button
        continueButton.backgroundColor = isUserInfoValid() ? .bBlue : .bGray
        
        if textField == passwordTextField {
            eyeButton.isHidden = textField == passwordTextField && text.isEmpty
        }
          
        
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
        
        if textField == passwordTextField {
            ///hiding or showiing eye button
            if let text = textField.text {
                eyeButton.isHidden = text.count == 1 && string.isEmpty
            }
            
        }
        
        
        return true
    }
    
    fileprivate
    func isUserInfoValid() -> Bool {
        
        guard let name = phoneTextField.text, let password = passwordTextField.text else {
            continueButton.backgroundColor = .bGray
            return false
        }
        
        if name.isEmpty {
            return false
        }
        
        if password.isEmpty {
            return false
        }
        
        return true
    }
}
