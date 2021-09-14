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
    
    @IBOutlet var otpTFields: [UITextField]! {
        didSet {
            for i in 0..<otpTFields.count {
                otpTFields[i].activateUI(for: .registration)
                otpTFields[i].font = .font(name: .roboto_bold, size: .r24)
                otpTFields[i].textColor = .bBlack
                otpTFields[i].delegate = self
                otpTFields[i].textAlignment = .center
            }
        }
    }
    
    
    
    
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
    
    
    
    
}


extension OTPVarifyVC: UITextFieldDelegate {
    
}
