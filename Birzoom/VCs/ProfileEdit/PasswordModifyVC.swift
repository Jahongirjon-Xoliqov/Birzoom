//
//  PasswordModifyVC.swift
//  Birzoom
//
//  Created by Administrator on 04/10/21.
//

import UIKit
import IQKeyboardManagerSwift

class PasswordModifyVC: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentInset = UIEdgeInsets(top: 32, left: 0, bottom: 0, right: 0)
        }
    }
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(UIImage.image(name: .chevBack), for: .normal)
            //backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
            backButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var modifyPasswordLabel: UILabel! {
        didSet {
            modifyPasswordLabel.text = Lang.get(valueFor: .b_profile_edit_password_modify)
            modifyPasswordLabel.textColor = .bBlack
            modifyPasswordLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var oldPasswordTextField: PasswordTextField! {
        didSet {
            oldPasswordTextField.activateUI(for: .password)
            oldPasswordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_oldpassword))
            oldPasswordTextField.font = .font(name: .roboto_regular, size: .r15)
            oldPasswordTextField.textColor = .bBlack
            oldPasswordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var oldEyeButton: UIButton! {
        didSet {
            oldEyeButton.setTitle("", for: .normal)
            oldEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            oldEyeButton.tintColor = .bEyeGay
        }
    }
    
    @IBOutlet weak var newPasswordTextField: PasswordTextField! {
        didSet {
            newPasswordTextField.activateUI(for: .password)
            newPasswordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_newpasswod))
            newPasswordTextField.font = .font(name: .roboto_regular, size: .r15)
            newPasswordTextField.textColor = .bBlack
            newPasswordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var newEyeButton: UIButton! {
        didSet {
            newEyeButton.setTitle("", for: .normal)
            newEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            newEyeButton.tintColor = .bEyeGay
        }
    }
    
    @IBOutlet weak var repeatPasswordTextField: PasswordTextField! {
        didSet {
            repeatPasswordTextField.activateUI(for: .password)
            repeatPasswordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_repeatpassword))
            repeatPasswordTextField.font = .font(name: .roboto_regular, size: .r15)
            repeatPasswordTextField.textColor = .bBlack
            repeatPasswordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var repeatEyeButton: UIButton! {
        didSet {
            repeatEyeButton.setTitle("", for: .normal)
            repeatEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            repeatEyeButton.tintColor = .bEyeGay
        }
    }
    
    @IBOutlet weak var saveButton: UIButton! {
        didSet {
            saveButton.design(as: .mainGray)
            saveButton.setTitle(Lang.get(valueFor: .b_save), for: .normal)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        IQKeyboardManager.shared.enable = false
    }
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func oldEyeButtonTapped(_ sender: UIButton) {
        if oldPasswordTextField.isSecureTextEntry {
            oldEyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
            oldPasswordTextField.isSecureTextEntry = false
        } else {
            oldEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            oldPasswordTextField.isSecureTextEntry = true
        }
    }
    
    @IBAction func newEyeButtonTapped(_ sender: UIButton) {
        if newPasswordTextField.isSecureTextEntry {
            newEyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
            newPasswordTextField.isSecureTextEntry = false
        } else {
            newEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            newPasswordTextField.isSecureTextEntry = true
        }
    }
    
    @IBAction func repeatEyeButtonTapped(_ sender: UIButton) {
        if repeatPasswordTextField.isSecureTextEntry {
            repeatEyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
            repeatPasswordTextField.isSecureTextEntry = false
        } else {
            repeatEyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            repeatPasswordTextField.isSecureTextEntry = true
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if saveButton.backgroundColor == .bBlue {
            navigateBackward()
        }
    }
    
}


extension PasswordModifyVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == newPasswordTextField {
            if let txt = textField.text, !txt.isEmpty {
                newPasswordTextField.isValid(txt.count >= 8)
                if let rt = repeatPasswordTextField.text {
                    if !rt.isEmpty {
                        repeatPasswordTextField.isValid(rt == txt)
                    }
                }
            } else {
                newPasswordTextField.isValid(false)
            }
        }
        
        if textField == oldPasswordTextField {
            if let txt = textField.text, !txt.isEmpty {
                oldPasswordTextField.isValid(txt == "12345678")
            } else {
                oldPasswordTextField.isValid(false)
            }
        }
        
        if textField == repeatPasswordTextField {
            if let txt = textField.text, !txt.isEmpty {
                repeatPasswordTextField.isValid(txt == newPasswordTextField.text && txt.count >= 8)
            } else {
                repeatPasswordTextField.isValid(false)
            }
        }
        
        if let old = oldPasswordTextField.text, let new = newPasswordTextField.text, let repeatp = repeatPasswordTextField.text, new == repeatp, old == "12345678" {
            saveButton.backgroundColor = .bBlue
        } else {
            saveButton.backgroundColor = .bGray
        }
    }
    
}
