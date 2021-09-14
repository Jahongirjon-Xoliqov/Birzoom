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
    
    //blue
    static let bBlue: UIColor = UIColor(named: "bBlue") ?? .blue
    static let bHalfBlue: UIColor = UIColor(named: "bHalfBlue") ?? UIColor.blue.withAlphaComponent(0.2)
    static let bTextBlue: UIColor = UIColor(named: "bBlueText") ?? .blue
    
    
    //gray
    static let bGray: UIColor = UIColor(named: "bGray") ?? .gray
    static let bPlaceHolderGray: UIColor = UIColor(named: "bGrayText") ?? .gray
    static let bTextGray: UIColor = UIColor(named: "bGrayText") ?? .gray
    static let bStrongGray: UIColor = UIColor(named: "bStrongGray") ?? .gray
    static let bGray1: UIColor = UIColor(named: "bGray1") ?? .gray
    
    
    //white
    static let bBackground: UIColor = UIColor(named: "bBackground") ?? .white
    
    
    
    //red
    static let bRed: UIColor = UIColor(named: "bRedText") ?? .red
    
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
    
    func setPaddings() {
        // Create a padding view for padding on left
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        self.leftViewMode = .always

        // Create a padding view for padding on right
        self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        self.rightViewMode = .always

    }
    
    func activateUI(for type: TextFieldType) {
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.bTextGray.cgColor
        layer.cornerRadius = 8

        setPaddings()
    }
    
    func isValid(_ b: Bool) {
        if b {
            layer.borderColor = UIColor.bTextGray.cgColor
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
        backgroundColor = UIColor.bGray
        clipsToBounds = true
        layer.cornerRadius = 8
        titleLabel?.font = .font(name: .roboto_medium, size: .r16)
        setTitleColor(.white, for: .normal)
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



