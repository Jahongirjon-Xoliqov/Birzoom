//
//  ProfileEditVC.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit
import IQKeyboardManagerSwift


class ProfileEditVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(UIImage.image(name: .chevBack), for: .normal)
            //backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
            backButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var profileEditLabel: UILabel! {
        didSet {
            profileEditLabel.text = Lang.get(valueFor: .l_profile_edit)
            profileEditLabel.textColor = .bBlack
            profileEditLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        }
    }
    
    @IBOutlet weak var profileImageView: ProfilImageView! {
        didSet {
            profileImageView.clipsToBounds = true
            profileImageView.configureUI(withName: "alex")
        }
    }
    
    @IBOutlet weak var cameraButton: UIButton! {
        didSet {
            cameraButton.setTitle("", for: .normal)
            cameraButton.setImage(UIImage.image(name: .camera), for: .normal)
            cameraButton.tintColor = .bHomeNavTint
            cameraButton.layer.borderWidth = 2
            cameraButton.layer.borderColor = UIColor.bProfileEditBorderGray.cgColor
            cameraButton.clipsToBounds = true
            cameraButton.backgroundColor = .bProfileEditBackGray
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = Lang.get(valueFor: .l_profile_edit_name)
            nameLabel.textColor = .bProfileEditTextGray
            nameLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.activateUI(for: .registration)
            nameTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_name))
            nameTextField.font = .font(name: .roboto_regular, size: .r15)
            nameTextField.textColor = .bBlack
            nameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var surnameLabel: UILabel! {
        didSet {
            surnameLabel.text = Lang.get(valueFor: .l_profile_edit_surname)
            surnameLabel.textColor = .bProfileEditTextGray
            surnameLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var surnameTextField: UITextField! {
        didSet {
            surnameTextField.activateUI(for: .registration)
            surnameTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_surname))
            surnameTextField.font = .font(name: .roboto_regular, size: .r15)
            surnameTextField.textColor = .bBlack
            surnameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var birthdateLabel: UILabel! {
        didSet {
            birthdateLabel.text = Lang.get(valueFor: .l_profile_edit_birthdate)
            birthdateLabel.textColor = .bProfileEditTextGray
            birthdateLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var birthdateTextField: UITextField! {
        didSet {
            birthdateTextField.activateUI(for: .registration)
            birthdateTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_birthdate))
            birthdateTextField.font = .font(name: .roboto_regular, size: .r15)
            birthdateTextField.textColor = .bBlack
            birthdateTextField.delegate = self
        }
    }
    
    @IBOutlet weak var passwordLabel: UILabel! {
        didSet {
            passwordLabel.text = Lang.get(valueFor: .l_profile_edit_password)
            passwordLabel.textColor = .bProfileEditTextGray
            passwordLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var passwordTextField: PasswordTextField! {
        didSet {
            passwordTextField.activateUI(for: .password)
            passwordTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_password))
            passwordTextField.font = .font(name: .roboto_regular, size: .r15)
            passwordTextField.textColor = .bBlack
            passwordTextField.delegate = self
        }
    }
    
    @IBOutlet weak var modifyPasswordButton: UIButton! {
        didSet {
            modifyPasswordButton.setTitle(Lang.get(valueFor: .b_profile_edit_password_modify), for: .normal)
            modifyPasswordButton.setTitleColor(.bBlue, for: .normal)
            modifyPasswordButton.titleLabel?.font = .font(name: .roboto_regular, size: .r12)
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
    
    
    @IBOutlet weak var emailLabel: UILabel! {
        didSet {
            emailLabel.text = Lang.get(valueFor: .l_profile_edit_email)
            emailLabel.textColor = .bProfileEditTextGray
            emailLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.activateUI(for: .registration)
            emailTextField.attributedPlaceholder = .bPlaceHolder(text: Lang.get(valueFor: .p_profile_edit_email))
            emailTextField.font = .font(name: .roboto_regular, size: .r15)
            emailTextField.textColor = .bBlack
            emailTextField.delegate = self
        }
    }
    
    @IBOutlet weak var genderLabel: UILabel! {
        didSet {
            genderLabel.text = Lang.get(valueFor: .l_profile_edit_gender)
            genderLabel.textColor = .bProfileEditTextGray
            genderLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet weak var maleButton: UIButton! {
        didSet {
            maleButton.setTitle(Lang.get(valueFor: .l_profile_edit_male), for: .normal)
            maleButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            maleButton.setTitleColor(.bBlack, for: .normal)
            maleButton.setImage(UIImage.image(name: .circleFill), for: .normal)
            maleButton.clipsToBounds = true
            maleButton.layer.cornerRadius = 8
            maleButton.layer.borderWidth = 1
            maleButton.layer.borderColor = UIColor.bBorderGray.cgColor
            maleButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var femaleButton: UIButton! {
        didSet {
            femaleButton.setTitle(Lang.get(valueFor: .l_profile_edit_female), for: .normal)
            femaleButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            femaleButton.setTitleColor(.bBlack, for: .normal)
            femaleButton.setImage(UIImage.image(name: .circle), for: .normal)
            femaleButton.clipsToBounds = true
            femaleButton.layer.cornerRadius = 8
            femaleButton.layer.borderWidth = 1
            femaleButton.layer.borderColor = UIColor.bBorderGray.cgColor
            femaleButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var saveButton: UIButton! {
        didSet {
            saveButton.design(as: .mainGray)
            saveButton.setTitle(Lang.get(valueFor: .b_save), for: .normal)
            saveButton.backgroundColor = .bBlue
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        cameraButton.layer.cornerRadius = cameraButton.frame.height/2
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        IQKeyboardManager.shared.enable = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        IQKeyboardManager.shared.enable = false
    }
    
    
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func genderButtonTapped(_ sender: UIButton) {
        if sender == maleButton {
            maleButton.setImage(UIImage.image(name: .circleFill), for: .normal)
            femaleButton.setImage(UIImage.image(name: .circle), for: .normal)
        } else {
            femaleButton.setImage(UIImage.image(name: .circleFill), for: .normal)
            maleButton.setImage(UIImage.image(name: .circle), for: .normal)
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func modifyPasswordButtonTapped(_ sender: UIButton) {
        //modifyPasswordButton.isHidden = true
        //eyeButton.isHidden = false
        navigate(to: .modifyPassword)
    }
    
    @IBAction func eyeButtonTapped(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            eyeButton.setImage(UIImage.image(name: .eyecross), for: .normal)
            passwordTextField.isSecureTextEntry = false
        } else {
            eyeButton.setImage(UIImage.image(name: .eye), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
    
}



extension ProfileEditVC: UITextFieldDelegate {
    
}
