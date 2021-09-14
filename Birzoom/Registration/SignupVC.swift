//
//  SignupVC.swift
//  Birzoom
//
//  Created by Administrator on 14/09/21.
//

import UIKit

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
                userInfoTextFields[i].attributedText = .bTextField()
            }
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func signinIsTriggered(_ sender: UITapGestureRecognizer) {
        
        let range = (Lang.get(valueFor: .l_reg_signin) as NSString).range(of: Lang.get(valueFor: .l_reg_signin_tap))
        
        if sender.didTapAttributedTextInLabel(label: signinLabel, inRange: range) {
            print("open sign in page")
        }
        
    }
    

}
