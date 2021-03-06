//
//  Extensions.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import UIKit

//MARK: - FONT
extension UIFont {
    
    static func font(name: BFont, size: BFontSize) -> UIFont {
        UIFont.init(name: name.rawValue, size: .relative(for: size)) ?? .systemFont(ofSize: .relative(for: size))
    }
    
}

//MARK: - IMAGE
extension UIImage {
    
    static func image(name: BImage) -> UIImage? {
        UIImage(named: name.rawValue)
    }
    
}


//MARK: - Colors
extension UIColor {
    
    //black
    static let bBlack: UIColor = UIColor(named: "bBlack") ?? .black
    static let bHomeBackground: UIColor = UIColor(named: "bHomeBackground") ?? .bBackground
    static let bHomeNavBackground: UIColor = UIColor(named: "bHomeNavBackground") ?? .black
    
    //blue
    static let bBlue: UIColor = UIColor(named: "bBlue") ?? .blue
    static let bHalfBlue: UIColor = UIColor(named: "bHalfBlue") ?? UIColor.blue.withAlphaComponent(0.2)
    static let bTextBlue: UIColor = UIColor(named: "bBlueText") ?? .blue
    static let bSelectionBlue: UIColor = UIColor(named: "bSelectionBlue") ?? .blue
    static let bBorderBlue: UIColor = UIColor(named: "bBorderBlue") ?? .blue
    static let bHomeExpbBlue: UIColor = UIColor(named: "bHomeExpbBlue") ?? .blue
    static let bProfileBlue: UIColor = UIColor(named: "bProfileBlue") ?? .blue
    
    //gray
    static let bGray: UIColor = UIColor(named: "bGray") ?? .red
    static let bPlaceHolderGray: UIColor = UIColor(named: "bGrayText") ?? .gray
    static let bTextGray: UIColor = UIColor(named: "bGrayText") ?? .gray
    static let bStrongGray: UIColor = UIColor(named: "bStrongGray") ?? .gray
    static let bGray1: UIColor = UIColor(named: "bGray1") ?? .gray
    static let bShadowGray: UIColor = UIColor(named: "bShadowGray") ?? .gray
    static let bBorderGray: UIColor = UIColor(named: "bBorderGray") ?? .gray
    static let bEyeGay: UIColor = UIColor(named: "bEyeGray") ?? .gray
    static let bButtonGray: UIColor = UIColor(named: "bButtonGray") ?? .gray
    static let bHomeNavTint: UIColor = UIColor(named: "bHomeNavTint") ?? .gray
    static let bHomeTextGray: UIColor = UIColor(named: "bHomeTextGray") ?? .gray
    static let bHomeBorderGray: UIColor = UIColor(named: "bHomeBorderGray") ?? .gray
    static let bHomeShadowGray: UIColor = UIColor(named: "bHomeShadowGray") ?? .gray
    static let bHomeScriptGray: UIColor = UIColor(named: "bHomeScriptGray") ?? .gray
    static let bProfileShadowGray: UIColor = UIColor(named: "bProfileShadowGray") ?? .gray
    static let bProfileEditBorderGray: UIColor = UIColor(named: "bProfileEditBorderGray") ?? .gray
    static let bProfileEditBackGray: UIColor = UIColor(named: "bProfileEditBackGray") ?? .gray
    static let bProfileEditTextGray: UIColor = UIColor(named: "bProfileEditTextGray") ?? .gray
    static let bHomeSeparator: UIColor = UIColor(named: "bHomeSeparator") ?? .gray
    
    //white
    static let bBackground: UIColor = UIColor(named: "bBackground") ?? .white
    static let bHomeProgressWhite: UIColor = UIColor(named: "bHomeProgressWhite") ?? .white
    
    
    //red
    static let bRed: UIColor = UIColor(named: "bRedText") ?? .red
    
    
    //purple
    static let bHomePurple: UIColor = UIColor(named: "bHomePurple") ?? .purple
    
    //yellow
    static let bProfileYellow: UIColor = UIColor(named: "bProfileYellow") ?? .yellow
    
    //orange
    static let bProfileOrange: UIColor = UIColor(named: "bProfileOrange") ?? .orange
    
    
    //green
    //bProfileGreen
    static let bProfileGreen: UIColor = UIColor(named: "bProfileGreen") ?? .green
}


//MARK: - AttributedString
extension NSAttributedString {
    
    static func bPlaceHolder(text: String) -> NSAttributedString {
        
        let attrString = NSAttributedString(string: text, attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.bPlaceHolderGray,
            NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15)
        ])
        
        return attrString
    }
    
    static func bTextField() -> NSAttributedString {
        
        let attrString = NSAttributedString(string: "", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.bBlack,
            NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15)
        ])
        
        return attrString
    }
    
    static func otpTextField() -> NSAttributedString {
        
        let attrString = NSAttributedString(string: "", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.bRed,
            NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r24)
        ])
        
        return attrString
    }
    
}


//MARK: - UITextField
extension UITextField {
    
    func setPaddings(for type: TextFieldType) {
        
        switch type {
        
        case .registration:
            // Create a padding view for padding on left
            self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
            self.leftViewMode = .always

            // Create a padding view for padding on right
            self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
            self.rightViewMode = .always
        case .password:
            // Create a padding view for padding on left
            self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
            self.leftViewMode = .always

            // Create a padding view for padding on right
            self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
            self.rightViewMode = .always
        }
        

    }
    
    func activateUI(for type: TextFieldType) {
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.bBorderGray.cgColor
        layer.cornerRadius = 8

        setPaddings(for: type)
    }
    
    func isValid(_ b: Bool) {
        if b {
            layer.borderColor = UIColor.bBorderGray.cgColor
        } else {
            layer.borderColor = UIColor.bRed.cgColor
            //vibrate
            Vibration.error.vibrate()
        }
    }
    
}

//MARK: - UITextView
extension UITextView {
    func isValid(_ b: Bool) {
        if b {
            layer.borderColor = UIColor.bBorderGray.cgColor
        } else {
            layer.borderColor = UIColor.bRed.cgColor
            //vibrate
            Vibration.error.vibrate()
        }
    }
}


//MARK: - UIButton
extension UIButton {
    
    func design(as type: BButtonType) {
        
        switch type {
        
        case .mainGray:
            backgroundColor = UIColor.bGray
            clipsToBounds = true
            layer.cornerRadius = 8
            titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            setTitleColor(.white, for: .normal)
        case .backBlue:
            setTitle("", for: .normal)
            setImage(UIImage.image(name: .chevBack), for: .normal)
            //backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
            tintColor = .bBlue
        case .settingsBlack:
            titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            setTitleColor(.bBlack, for: .normal)
        }
        
    }
    
}


//MARK: - UILabel
extension UILabel {
    
    func designAsTopTitle() {
        textColor = .bBlack
        font = .font(name: .roboto_medium, size: .r20)
    }
    
}


//MARK: - Tap Gesture
extension UITapGestureRecognizer {
    
    func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange, edgeInset: UIEdgeInsets? = nil) -> Bool {
            // Create instances of NSLayoutManager, NSTextContainer and NSTextStorage
            let layoutManager = NSLayoutManager()
            let textContainer = NSTextContainer(size: CGSize.zero)
            let textStorage = NSTextStorage(attributedString: label.attributedText!)

            // Configure layoutManager and textStorage
            layoutManager.addTextContainer(textContainer)
            textStorage.addLayoutManager(layoutManager)
            let alignment = label.textAlignment
            // Configure textContainer
            textContainer.lineFragmentPadding = 0.0
            textContainer.lineBreakMode = label.lineBreakMode
            textContainer.maximumNumberOfLines = label.numberOfLines
            let width = label.bounds.width - (edgeInset?.left ?? 0) - (edgeInset?.right ?? 0)
            let height = label.bounds.height - (edgeInset?.top ?? 0) - (edgeInset?.bottom ?? 0)
            let labelSize = CGSize(width: width, height: height)
            textContainer.size = labelSize

            // Find the tapped character location and compare it to the specified range
            let locationOfTouchInLabel = self.location(in: label)
            let textBoundingBox = layoutManager.usedRect(for: textContainer)
            var xOffset: CGFloat = 0
            var yOffset: CGFloat = 0
            if alignment == .left {
                xOffset = (edgeInset?.left ?? 0) - textBoundingBox.origin.x
                yOffset = (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y + (edgeInset?.top ?? 0)
            } else if alignment == .right {
                xOffset = label.bounds.width - (edgeInset?.right ?? 0) - labelSize.width - textBoundingBox.origin.x
                yOffset = (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y + (edgeInset?.top ?? 0)
            } else {
                xOffset = (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x + (edgeInset?.left ?? 0)
                yOffset = (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y + (edgeInset?.top ?? 0)
            }
            let textContainerOffset = CGPoint(
                x: xOffset,
                y: yOffset
            )
            let locationOfTouchInTextContainer = CGPoint(
                x: locationOfTouchInLabel.x - textContainerOffset.x,
                y: locationOfTouchInLabel.y - textContainerOffset.y
            )
            let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)

            return NSLocationInRange(indexOfCharacter, targetRange)
        }

}


//MARK: - VC
extension UIViewController {
    
    //if view controller only
    func coordinate(to vc: VControllers, animated: Bool = true) {
        
        switch vc {
        case .signup:
            let vc = SignupVC(nibName: "SignupVC", bundle: nil)
            present(vc, animated: true)
        case .signin:
            let vc = SigninVC(nibName: "SigninVC", bundle: nil)
            present(vc, animated: true)
        case .otp:
            let vc = OTPVarifyVC(nibName: "OTPVarifyVC", bundle: nil)
            present(vc, animated: true)
        case .password:
            let vc = PasswordRecoveryVC(nibName: "PasswordRecoveryVC", bundle: nil)
            present(vc, animated: true)
        case .otppassword:
            let vc = PasswordOTPVarifyVC(nibName: "PasswordOTPVarifyVC", bundle: nil)
            present(vc, animated: true)
        case .newpassword:
            let vc = NewPasswordVC(nibName: "NewPasswordVC", bundle: nil)
            present(vc, animated: true)
        case .languageChoose:
            let vc = LanguageVC(nibName: "LanguageVC", bundle: nil)
            present(vc, animated: true)
        case .interest:
            let vc = InterestsVC(nibName: "InterestsVC", bundle: nil)
            present(vc, animated: true)
        case .home:
            let vc = HomeVC(nibName: "HomeVC", bundle: nil)
            present(vc, animated: true)
        case .guide:
            let vc = GuideVC(nibName: "GuideVC", bundle: nil)
            present(vc, animated: true)
        case .news:
            let vc = NewsVC(nibName: "NewsVC", bundle: nil)
            present(vc, animated: true)
        case .newsDetailed:
            let vc = NewsDetailedVC(nibName: "NewsDetailedVC", bundle: nil)
            present(vc, animated: true)
        case .discountPopup:
            let vc = DiscardPopupVC(nibName: "DiscardPopupVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: animated)
        case .cupon:
            let vc = CuponVC(nibName: "CuponVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: animated)
        case .notifications:
            let vc = NotificationsVC(nibName: "NotificationsVC", bundle: nil)
            present(vc, animated: true)
        case .profilEdit:
            let vc = ProfileEditVC(nibName: "ProfileEditVC", bundle: nil)
            present(vc, animated: true)
        case .modifyPassword:
            let vc = PasswordModifyVC(nibName: "PasswordModifyVC", bundle: nil)
            present(vc, animated: true)
        case .target:
            let vc = TargetSetVC(nibName: "TargetSetVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: animated)
        case .logout:
            let vc = LogoutVC(nibName: "LogoutVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: animated)
        case .settings:
            let vc = SettingsVC(nibName: "SettingsVC", bundle: nil)
            present(vc, animated: true)
        case .notificationsModify:
            let vc = ModifyNotificationsVC(nibName: "ModifyNotificationsVC", bundle: nil)
            present(vc, animated: true)
        case .applangModify:
            let vc = ModifyLanguageVC(nibName: "ModifyLanguageVC", bundle: nil)
            present(vc, animated: true)
        case .transactions:
            let vc = PayHistoryVC(nibName: "PayHistoryVC", bundle: nil)
            present(vc, animated: true)
        case .transactionsDetailed:
            let vc = TransactionDetailedVC(nibName: "TransactionDetailedVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: animated)
        case .activeLessons:
            let vc = ActiveLessonsVC(nibName: "ActiveLessonsVC", bundle: nil)
            present(vc, animated: true)
        case .contacts:
            let vc = ContactVC(nibName: "ContactVC", bundle: nil)
            present(vc, animated: true)
        case .aboutUs:
            let vc = AboutUsVC(nibName: "AboutUsVC", bundle: nil)
            present(vc, animated: true)
        case .faq:
            let vc = FAQVC(nibName: "FAQVC", bundle: nil)
            present(vc, animated: true)
        case .activeSessions:
            let vc = ActiveSessionsVC(nibName: "ActiveSessionsVC", bundle: nil)
            present(vc, animated: true)
        case .podcast:
            let vc = PodcastsVC(nibName: "PodcastsVC", bundle: nil)
            present(vc, animated: true)
        case .newPodcast:
            let vc = NewPodcastsVC(nibName: "NewPodcastsVC", bundle: nil)
            present(vc, animated: true)
        case .everyonePodcast:
            let vc = EveryonePodcastsVC(nibName: "EveryonePodcastsVC", bundle: nil)
            present(vc, animated: true)
        case .motivationalPodcast:
            let vc = MotivationalPodcastsVC(nibName: "MotivationalPodcastsVC", bundle: nil)
            present(vc, animated: true)
        case .fmPodcast:
            let vc = FMPodcastVC(nibName: "FMPodcastVC", bundle: nil)
            present(vc, animated: true)
        case .everyonePDetailed:
            let vc = EveryonePDetailedVC(nibName: "EveryonePDetailedVC", bundle: nil)
            present(vc, animated: true)
        case .tests:
            let vc = TestsVC(nibName: "TestsVC", bundle: nil)
            present(vc, animated: true)
        case .testLessons:
            let vc = TestLessonsVC(nibName: "TestLessonsVC", bundle: nil)
            present(vc, animated: true)
        case .savedVocabulary:
            let vc = SavedVocabularyVC(nibName: "SavedVocabularyVC", bundle: nil)
            present(vc, animated: true)
        case .lovedLessons:
            let vc = LovedLessonsVC(nibName: "LovedLessonsVC", bundle: nil)
            present(vc, animated: true)
        }
        
    }
    
    func coordinateBackward(animated: Bool = true) {
        dismiss(animated: animated)
    }
    
    //if with navigation controller
    func navigate(to vc: VControllers) {
        guard let navController = navigationController else {
            coordinate(to: vc)
            return
        }
        
        switch vc {
        case .signup:
            let vc = SignupVC(nibName: "SignupVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .signin:
            let vc = SigninVC(nibName: "SigninVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .otp:
            let vc = OTPVarifyVC(nibName: "OTPVarifyVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .password:
            let vc = PasswordRecoveryVC(nibName: "PasswordRecoveryVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .otppassword:
            let vc = PasswordOTPVarifyVC(nibName: "PasswordOTPVarifyVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .newpassword:
            let vc = NewPasswordVC(nibName: "NewPasswordVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .languageChoose:
            let vc = LanguageVC(nibName: "LanguageVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .interest:
            let vc = InterestsVC(nibName: "InterestsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .home:
            let vc = HomeVC(nibName: "HomeVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .guide:
            let vc = GuideVC(nibName: "GuideVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .news:
            let vc = NewsVC(nibName: "NewsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .newsDetailed:
            let vc = NewsDetailedVC(nibName: "NewsDetailedVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .discountPopup:
            let vc = DiscardPopupVC(nibName: "DiscardPopupVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .cupon:
            let vc = DiscardPopupVC(nibName: "DiscardPopupVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .notifications:
            let vc = NotificationsVC(nibName: "NotificationsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .profilEdit:
            let vc = ProfileEditVC(nibName: "ProfileEditVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .modifyPassword:
            let vc = PasswordModifyVC(nibName: "PasswordModifyVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .target:
            let vc = TargetSetVC(nibName: "TargetSetVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .logout:
            let vc = LogoutVC(nibName: "LogoutVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .settings:
            let vc = SettingsVC(nibName: "SettingsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .notificationsModify:
            let vc = ModifyNotificationsVC(nibName: "ModifyNotificationsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .applangModify:
            let vc = ModifyLanguageVC(nibName: "ModifyLanguageVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .transactions:
            let vc = PayHistoryVC(nibName: "PayHistoryVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .transactionsDetailed:
            let vc = TransactionDetailedVC(nibName: "TransactionDetailedVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .activeLessons:
            let vc = ActiveLessonsVC(nibName: "ActiveLessonsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .contacts:
            let vc = ContactVC(nibName: "ContactVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .aboutUs:
            let vc = AboutUsVC(nibName: "AboutUsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .faq:
            let vc = FAQVC(nibName: "FAQVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .activeSessions:
            let vc = ActiveSessionsVC(nibName: "ActiveSessionsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .podcast:
            let vc = PodcastsVC(nibName: "PodcastsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .newPodcast:
            let vc = NewPodcastsVC(nibName: "NewPodcastsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .everyonePodcast:
            let vc = EveryonePodcastsVC(nibName: "EveryonePodcastsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .motivationalPodcast:
            let vc = MotivationalPodcastsVC(nibName: "MotivationalPodcastsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        case .fmPodcast:
            let vc = FMPodcastVC(nibName: "FMPodcastVC", bundle: nil)
            vc.hidesBottomBarWhenPushed = true
            navController.pushViewController(vc, animated: true)
        case .everyonePDetailed:
            let vc = EveryonePDetailedVC(nibName: "EveryonePDetailedVC", bundle: nil)
            vc.hidesBottomBarWhenPushed = true
            navController.pushViewController(vc, animated: true)
        case .tests:
            let vc = TestsVC(nibName: "TestsVC", bundle: nil)
            vc.hidesBottomBarWhenPushed = true
            navController.pushViewController(vc, animated: true)
        case .testLessons:
            let vc = TestLessonsVC(nibName: "TestLessonsVC", bundle: nil)
            vc.hidesBottomBarWhenPushed = true
            navController.pushViewController(vc, animated: true)
        case .savedVocabulary:
            let vc = SavedVocabularyVC(nibName: "SavedVocabularyVC", bundle: nil)
            vc.hidesBottomBarWhenPushed = true
            navController.pushViewController(vc, animated: true)
        case .lovedLessons:
            let vc = LovedLessonsVC(nibName: "LovedLessonsVC", bundle: nil)
            navController.pushViewController(vc, animated: true)
        }
        
    }
    
    func navigateBackward() {
        navigationController?.popViewController(animated: true)
    }
    
    func navigateBackToSignup() {
        navigationController?.popToRootViewController(animated: true)
    }
    
}


extension CALayer {
    //video like in youtube
    //dimming view
    func dim() {
        let colourAnim = CABasicAnimation(keyPath: "backgroundColor")
        colourAnim.fromValue = backgroundColor
        colourAnim.toValue = UIColor.black.withAlphaComponent(0.5).cgColor
        colourAnim.duration = 1.0
        add(colourAnim, forKey: "colourAnimation")
        backgroundColor = UIColor.black.withAlphaComponent(0.5).cgColor
    }
    
    func undim() {
        let colourAnim = CABasicAnimation(keyPath: "backgroundColor")
        colourAnim.fromValue = backgroundColor
        colourAnim.toValue = UIColor.clear.cgColor
        colourAnim.duration = 1.0
        add(colourAnim, forKey: "colourAnimation")
        backgroundColor = UIColor.clear.cgColor
    }
    
}


///extension for string is used to get content width
///string size - content size
extension String {
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
    
    mutating func setThankgiving(to name: String) {
        
        switch Cache.getAppLanguage() {
        case .uz:
            let text = "Javoblaringiz uchun rahmat \(name), keyingi darsda kutib qolamiz, ungacha o'z ustingizda ishlashda davom eting!"
            self = text
        case .ru:
            let text = "?????????????? ???? ????????????, \(name), ???? ?? ?????????????????????? ???????? ???????????????????? ??????????, ?????????????????? ???????????????? ?????? ?????????? ???? ?????? ??????!"
            self = text
        case .en:
            let text = "Thank you for your answers \(name), we look forward to the next lesson, keep working on yourself until then!"
            self = text
        }
        
    }
    
    mutating func setTargetFor(days: Int) {
        
        if Cache.getAppLanguage() == .en {
            self = "You will complete \n\(days) activity in a week"
        }
        
        if Cache.getAppLanguage() == .ru {
            self = "You will complete \n\(days) activity in a week"
        }
        
        if Cache.getAppLanguage() == .uz {
            self = "Siz haftasiga \n\(days) ta faoliyat tugallaysiz"
        }
        
    }

}

extension UIView {
    func addBottomShadow() {
        layer.masksToBounds = false
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.15
        layer.shadowColor = UIColor.bShadowGray.cgColor
        layer.shadowOffset = CGSize(width: 0 , height: 4)
        layer.shadowPath = UIBezierPath(rect: CGRect(x: 0,
                                                 y: bounds.maxY - layer.shadowRadius,
                                                 width: bounds.width,
                                                 height: layer.shadowRadius)).cgPath
}
}



extension UITableView {
    static let lessonsRowHeight: CGFloat = (112/375)*CGFloat.scSize.width
}


extension UICollectionView {
    static let newsItemHeight: CGSize = CGSize(width: (240/375)*CGFloat.scSize.width, height: (217/375)*CGFloat.scSize.width)
    
    static let videosItemHeight: CGSize = CGSize(width: (300/375)*CGFloat.scSize.width, height: (238/375)*CGFloat.scSize.width)
    
    static let savedsItemSize: CGSize = CGSize(width: (144/375)*CGFloat.scSize.width, height: (144/375)*CGFloat.scSize.width)
    
    static var topPodcastsItemSize: CGSize {
        if CGFloat.scSize.width > CGFloat.uiSize.width {
            return CGSize(width: (328/128)*140, height: 140)
        } else {
            //375 128
            let h = min(128*CGFloat.scSize.width/375, 140)
            let w = 328*h/128
            return CGSize(width: w, height: h)
        }
    }
    
    static var newPodcastsItemSize: CGSize {
        if CGFloat.scSize.width > CGFloat.uiSize.width {
            return CGSize(width: (112/172)*220, height: 220)
        } else {
            //375 128
            let h = min(182*CGFloat.scSize.width/375, 220)
            let w = 112*h/172
            return CGSize(width: w, height: h)
        }
    }
    
    static var podcastsDetailedItemSize: CGSize {
        if CGFloat.scSize.width > CGFloat.uiSize.width {
            let w = CGFloat.uiSize.width/2 - 23
            let h = w*238/164
            return CGSize(width: w, height: h)
        } else {
            //164 238
            let w = CGFloat.scSize.width/2 - 23
            let h = w*238/164
            return CGSize(width: w, height: h)
        }
    }
    
    static var testsItemSize: CGSize {
        if CGFloat.scSize.width > CGFloat.uiSize.width {
            let w = CGFloat.uiSize.width/2 - 23
            return CGSize(width: w, height: w)
        } else {
            let w = CGFloat.scSize.width/2 - 23
            return CGSize(width: w, height: w)
        }
    }
    
    
}













//MARK: - Cell
extension InterestsCVC {
    static let identifier = "InterestsCVC"
    static func nib() -> UINib {
        UINib(nibName: "InterestsCVC", bundle: nil)
    }
}

extension LessonTVC {
    static let identifier = "LessonTVC"
    static func nib() -> UINib {
        UINib(nibName: "LessonTVC", bundle: nil)
    }
}

extension NewsCVC {
    static let identifier = "NewsCVC"
    static func nib() -> UINib {
        UINib(nibName: "NewsCVC", bundle: nil)
    }
}

extension VideosCVC {
    static let identifier = "VideosCVC"
    static func nib() -> UINib {
        UINib(nibName: "VideosCVC", bundle: nil)
    }
}

extension NewsTVC {
    static let identifier = "NewsTVC"
    static func nib() -> UINib {
        UINib(nibName: "NewsTVC", bundle: nil)
    }
}


extension NewsMainDetailedTVC {
    static let identifier = "NewsMainDetailedTVC"
    static func nib() -> UINib {
        UINib(nibName: "NewsMainDetailedTVC", bundle: nil)
    }
}

extension NewsAdditionalTVC {
    static let identifier = "NewsAdditionalTVC"
    static func nib() -> UINib {
        UINib(nibName: "NewsAdditionalTVC", bundle: nil)
    }
}

extension NotificationTVC {
    static let identifier = "NotificationTVC"
    static func nib() -> UINib {
        UINib(nibName: "NotificationTVC", bundle: nil)
    }
}


extension ProfilTVC {
    static let identifier = "ProfilTVC"
    static func nib() -> UINib {
        UINib(nibName: "ProfilTVC", bundle: nil)
    }
}


extension BalanceTVC {
    static let identifier = "BalanceTVC"
    static func nib() -> UINib {
        UINib(nibName: "BalanceTVC", bundle: nil)
    }
}

extension ResultsTVC {
    static let identifier = "ResultsTVC"
    static func nib() -> UINib {
        UINib(nibName: "ResultsTVC", bundle: nil)
    }
}

extension CertificateTVC {
    static let identifier = "CertificateTVC"
    static func nib() -> UINib {
        UINib(nibName: "CertificateTVC", bundle: nil)
    }
}

extension ProgressTVC {
    static let identifier = "ProgressTVC"
    static func nib() -> UINib {
        UINib(nibName: "ProgressTVC", bundle: nil)
    }
}

extension ActivityTVC {
    static let identifier = "ActivityTVC"
    static func nib() -> UINib {
        UINib(nibName: "ActivityTVC", bundle: nil)
    }
}


extension SavedsTVC {
    static let identifier = "SavedsTVC"
    static func nib() -> UINib {
        UINib(nibName: "SavedsTVC", bundle: nil)
    }
}

extension SavedsCVC {
    static let identifier = "SavedsCVC"
    static func nib() -> UINib {
        UINib(nibName: "SavedsCVC", bundle: nil)
    }
}

extension LogoutTVC {
    static let identifier = "LogoutTVC"
    static func nib() -> UINib {
        UINib(nibName: "LogoutTVC", bundle: nil)
    }
}

extension PayHistoryTVC {
    static let identifier = "PayHistoryTVC"
    static func nib() -> UINib {
        UINib(nibName: "PayHistoryTVC", bundle: nil)
    }
}

extension ActiveLessonsTVC {
    static let identifier = "ActiveLessonsTVC"
    static func nib() -> UINib {
        UINib(nibName: "ActiveLessonsTVC", bundle: nil)
    }
}

extension FAQTVC {
    static let identifier = "FAQTVC"
    static func nib() -> UINib {
        UINib(nibName: "FAQTVC", bundle: nil)
    }
}

extension TopPodcastsCVC {
    static let identifier = "TopPodcastsCVC"
    static func nib() -> UINib {
        UINib(nibName: "TopPodcastsCVC", bundle: nil)
    }
}

extension NewPodcastsCVC {
    static let identifier = "NewPodcastsCVC"
    static func nib() -> UINib {
        UINib(nibName: "NewPodcastsCVC", bundle: nil)
    }
}

extension PodcastsDetailedCVC {
    static let identifier = "PodcastsDetailedCVC"
    static func nib() -> UINib {
        UINib(nibName: "PodcastsDetailedCVC", bundle: nil)
    }
}

extension MeterCVC {
    static let identifier = "MeterCVC"
    static func nib() -> UINib {
        UINib(nibName: "MeterCVC", bundle: nil)
    }
}

extension EveryonePDetailedDescTVC {
    static let identifier = "EveryonePDetailedDescTVC"
    static func nib() -> UINib {
        UINib(nibName: "EveryonePDetailedDescTVC", bundle: nil)
    }
}

extension PodcastPlayTVC {
    static let identifier = "PodcastPlayTVC"
    static func nib() -> UINib {
        UINib(nibName: "PodcastPlayTVC", bundle: nil)
    }
}

extension TestsCVC {
    static let identifier = "TestsCVC"
    static func nib() -> UINib {
        UINib(nibName: "TestsCVC", bundle: nil)
    }
}

extension TestLessonTVC {
    static let identifier = "TestLessonTVC"
    static func nib() -> UINib {
        UINib(nibName: "TestLessonTVC", bundle: nil)
    }
}

extension VocabularyTVC {
    static let identifier = "VocabularyTVC"
    static func nib() -> UINib {
        UINib(nibName: "VocabularyTVC", bundle: nil)
    }
}
