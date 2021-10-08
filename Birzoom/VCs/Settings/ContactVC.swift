//
//  ContactVC.swift
//  Birzoom
//
//  Created by Administrator on 08/10/21.
//

import UIKit
import IQKeyboardManagerSwift

class ContactVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var contactTitleLabel: UILabel! {
        didSet {
            contactTitleLabel.designAsTopTitle()
            contactTitleLabel.text = Lang.get(valueFor: .l_contacts)
        }
    }
    
    @IBOutlet weak var phoneNumberButton: UIButton! {
        didSet {
            phoneNumberButton.setTitleColor(.bBlack, for: .normal)
            phoneNumberButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            phoneNumberButton.setTitle("+998 33 695 95 50", for: .normal)
        }
    }
    
    @IBOutlet weak var emailButton: UIButton! {
        didSet {
            emailButton.setTitleColor(.bBlack, for: .normal)
            emailButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            emailButton.setTitle("birzoomuz@gmail.com", for: .normal)
        }
    }
    
    @IBOutlet weak var telegramButton: UIButton! {
        didSet {
            telegramButton.setTitleColor(.bBlack, for: .normal)
            telegramButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            telegramButton.setTitle(Lang.get(valueFor: .b_contacts_telegram), for: .normal)
        }
    }
    
    @IBOutlet weak var instagramButton: UIButton! {
        didSet {
            instagramButton.setTitleColor(.bBlack, for: .normal)
            instagramButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            instagramButton.setTitle(Lang.get(valueFor: .b_contacts_instagram), for: .normal)
        }
    }
    
    @IBOutlet weak var facebookButton: UIButton! {
        didSet {
            facebookButton.setTitleColor(.bBlack, for: .normal)
            facebookButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            facebookButton.setTitle(Lang.get(valueFor: .b_contacts_facebook), for: .normal)
        }
    }
    
    @IBOutlet weak var tiktokButton: UIButton! {
        didSet {
            tiktokButton.setTitleColor(.bBlack, for: .normal)
            tiktokButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            tiktokButton.setTitle(Lang.get(valueFor: .b_contacts_tiktok), for: .normal)
        }
    }
    
    @IBOutlet weak var youtubeButton: UIButton! {
        didSet {
            youtubeButton.setTitleColor(.bBlack, for: .normal)
            youtubeButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            youtubeButton.setTitle(Lang.get(valueFor: .b_contacts_youtube), for: .normal)
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            let pattribute = NSMutableAttributedString(string: Lang.get(valueFor: .p_contacts_name), attributes: [
                NSAttributedString.Key.foregroundColor : UIColor.bHomeNavTint,
                NSAttributedString.Key.font : UIFont.font(name: .roboto_regular, size: .r16)
            ])
            nameTextField.attributedPlaceholder = pattribute
            nameTextField.font = .font(name: .roboto_regular, size: .r16)
            nameTextField.textColor = .bBlack
            nameTextField.activateUI(for: .registration)
            nameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            let pattribute = NSMutableAttributedString(string: Lang.get(valueFor: .p_contacts_email), attributes: [
                NSAttributedString.Key.foregroundColor : UIColor.bHomeNavTint,
                NSAttributedString.Key.font : UIFont.font(name: .roboto_regular, size: .r16)
            ])
            emailTextField.attributedPlaceholder = pattribute
            emailTextField.font = .font(name: .roboto_regular, size: .r16)
            emailTextField.textColor = .bBlack
            emailTextField.activateUI(for: .registration)
            emailTextField.delegate = self
        }
    } 
    
    @IBOutlet weak var messageTextView: UITextView! {
        didSet {
            messageTextView.delegate = self
            messageTextView.contentInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
            messageTextView.text = Lang.get(valueFor: .p_contacts_message)
            messageTextView.textColor = .bHomeNavTint
            messageTextView.font = .font(name: .roboto_regular, size: .r16)
            messageTextView.clipsToBounds = true
            messageTextView.layer.cornerRadius = 8
            messageTextView.layer.borderWidth = 1
            messageTextView.layer.borderColor = UIColor.bBorderGray.cgColor
        }
    }
    
    @IBOutlet weak var sendButton: UIButton! {
        didSet {
            sendButton.setTitle(Lang.get(valueFor: .b_send), for: .normal)
            sendButton.design(as: .mainGray)
        }
    }
    
    private var isFieldsValid: (name: Bool , email: Bool , message: Bool)! {
        didSet {
            if isFieldsValid.name && isFieldsValid.email && isFieldsValid.message {
                sendButton.backgroundColor = .bBlue
            } else {
                sendButton.backgroundColor = .bGray
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isFieldsValid = (false, false, false)
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
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func appButtonsTapped(_ sender: UIButton) {
        print(sender.tag)
    }
    

}


extension ContactVC: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        validateTextFields(textField: textField)
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validateTextFields(textField: textField)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    fileprivate
    func validateTextFields(textField: UITextField) {
        
        if textField == nameTextField {
            if let name = nameTextField.text {
                nameTextField.isValid(!name.isEmpty)
                isFieldsValid.name = !name.isEmpty
            }
            
        }
        
        if textField == emailTextField {
            if let email = emailTextField.text {
                if email.isEmpty {
                    emailTextField.isValid(false)
                    isFieldsValid.email = false
                } else {
                    emailTextField.isValid(email.hasSuffix("@gmail.com"))
                    isFieldsValid.email = email.hasSuffix("@gmail.com")
                }
            }
        }
        
    }
    
}

extension ContactVC: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        if let message = messageTextView.text {
            let temp = !(message.isEmpty || message == Lang.get(valueFor: .p_contacts_message))
            messageTextView.isValid(temp)
            isFieldsValid.message = temp
        } else {
            messageTextView.isValid(false)
            isFieldsValid.message = false
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        if let message = textView.text {
            if message.isEmpty {
                //xato
                isFieldsValid.message = false
                messageTextView.isValid(false)
                textView.text = Lang.get(valueFor: .p_contacts_message)
            } else {
                //message bor
                isFieldsValid.message = true
                messageTextView.isValid(true)
                
            }
            
            if message == Lang.get(valueFor: .p_contacts_message) {
                messageTextView.textColor = .bHomeNavTint
            }
        }
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if let message = messageTextView.text {
            if message.isEmpty {
                messageTextView.textColor = .bBlack
            }
            
            if message == Lang.get(valueFor: .p_contacts_message) {
                messageTextView.text = ""
                messageTextView.textColor = .bBlack
            }
            
        }
    }
    
}
