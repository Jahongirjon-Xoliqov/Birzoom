//
//  OTPVarifyVC.swift
//  Birzoom
//
//  Created by Administrator on 14/09/21.
//

import UIKit
import IQKeyboardManagerSwift

class OTPVarifyVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var confCodeLabel: UILabel! {
        didSet {
            confCodeLabel.text = Lang.get(valueFor: .l_otp_confir_code)
            confCodeLabel.font = .font(name: .roboto_medium, size: .r24)
            confCodeLabel.textColor = UIColor.bBlack
        }
        
    }
    
    @IBOutlet weak var instructorLabel: UILabel! {
        didSet {
            
            let style = NSMutableParagraphStyle()
            style.alignment = .center
            style.lineSpacing = 1
            style.minimumLineHeight = 22
            
            let attributes = NSMutableAttributedString(string: "Iltimos +998 33 949 58 38 nomeriga \nyuborilgan kodni kiriting", attributes: [
                NSAttributedString.Key.paragraphStyle: style,
                NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15),
                NSAttributedString.Key.foregroundColor: UIColor.bGray1
            ])
            
            instructorLabel.attributedText = attributes
            
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var resendButton: UIButton! {
        didSet {
            resendButton.titleLabel?.font = .font(name: .roboto_regular, size: .r15)
            resendButton.setTitleColor(.bTextBlue, for: .normal)
            resendButton.setTitle("Kodni qayta yuborish", for: .normal)
        }
    }
    
    
    @IBOutlet var otpTFields: [OTPTextfield]! {
        didSet {
            for i in 0..<otpTFields.count {
                otpTFields[i].activateUI(for: .registration)
                otpTFields[i].font = .font(name: .roboto_bold, size: .r24)
                otpTFields[i].textColor = .bBlack
                otpTFields[i].delegate = self
                otpTFields[i].bDelegate = self
                otpTFields[i].textAlignment = .center
                otpTFields[i].tag = i
            }
        }
    }
    
    
    ///fileprivate variables
    private
    var OTP: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ///keyboard
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ///keyboard
        IQKeyboardManager.shared.enable = true
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        if isOTPValid() {
            print(OTP)
        } else {
            print("otp is incorrect")
            for tf in otpTFields {
                tf.textColor = .bRed
            }
            Vibration.error.vibrate()
        }
    }
    
    @IBAction func resendButtonTapped(_ sender: UIButton) {
    
    }
    
    
}


extension OTPVarifyVC: UITextFieldDelegate, OTPTFieldDelegate {
    
    func didPressedBackward(at tag: Int) {
        print("back")
        if tag == 0 {
            otpTFields[0].resignFirstResponder()
            return
        }
        
        if tag == 1 {
            otpTFields[1].resignFirstResponder()
            otpTFields[0].becomeFirstResponder()
            otpTFields[0].text?.removeAll()
            return
        }
        
        if tag == 2 {
            otpTFields[2].resignFirstResponder()
            otpTFields[1].becomeFirstResponder()
            otpTFields[1].text?.removeAll()
            return
        }
        
        if tag == 3 {
            otpTFields[3].resignFirstResponder()
            otpTFields[2].becomeFirstResponder()
            otpTFields[2].text?.removeAll()
            return
        }
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //guard let text = textField.text else { return true }

        
        if textField.tag == 0 {
            if let text = otpTFields[1].text, !text.isEmpty {
                textField.text = string
                textField.resignFirstResponder()
                return true
            }
        }
        
        if textField.tag == 1 {
            if let text = otpTFields[2].text, !text.isEmpty {
                textField.text = string
                textField.resignFirstResponder()
                return true
            }
        }
        
        if textField.tag == 2 {
            if let text = otpTFields[3].text, !text.isEmpty {
                textField.text = string
                textField.resignFirstResponder()
                return true
            }
        }
        
        if textField.tag == 3 && !string.isEmpty {
            textField.text = string
            textField.resignFirstResponder()
        }
        
        
        
        if textField.tag == 0 {
            otpTFields[0].resignFirstResponder()
            otpTFields[1].becomeFirstResponder()
            textField.text = string
            
        }
        
        if textField.tag == 1 {
            otpTFields[1].resignFirstResponder()
            otpTFields[2].becomeFirstResponder()
            textField.text = string
            
        }
        
        if textField.tag == 2 {
            otpTFields[2].resignFirstResponder()
            otpTFields[3].becomeFirstResponder()
            textField.text = string
            
        }
        
        if textField.tag == 3 {
            otpTFields[3].resignFirstResponder()
            textField.text = string
            
        }
       
        
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text?.removeAll()
        continueButton.backgroundColor = .bGray
        for tf in otpTFields {
            tf.textColor = .bBlack
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if isOTPValid() {
            continueButton.backgroundColor = .bBlue
        } else {
            continueButton.backgroundColor = .bGray
        }
    }
    
    fileprivate
    func isOTPValid() -> Bool {
        OTP.removeAll()
        for i in otpTFields {
            if let text = i.text {
                OTP.append(text)
            } else {
                return false
            }
        }
        return OTP.count == 4
    }
    
}
