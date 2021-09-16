//
//  WelcomeVC.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import UIKit

class WelcomeVC: UIViewController {

    
    @IBOutlet var titleLabels: [UILabel]! {
        didSet {
            titleLabels[0].text = Lang.get(valueFor: .l_welcome_title1)
            titleLabels[0].textColor = .bBlack
            titleLabels[0].font = .font(name: .roboto_medium, size: .r24)
        }
    }
    
    @IBOutlet var descriptionLabels: [UILabel]! {
        didSet {
            let style = NSMutableParagraphStyle()
            style.alignment = .center
            style.lineSpacing = 1
            style.minimumLineHeight = 22
            
            let attributes = NSMutableAttributedString(string: Lang.get(valueFor: .l_welcome_desc1), attributes: [
                NSAttributedString.Key.paragraphStyle: style,
                NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15),
                NSAttributedString.Key.foregroundColor: UIColor.bBlack
            ])
            
            descriptionLabels[0].attributedText = attributes
        }
    }
    
    @IBOutlet var pagerViews: [UIView]! {
        didSet {
            for pv in pagerViews {
                pv.clipsToBounds = true
                pv.layer.cornerRadius = 4
                pv.backgroundColor = .bHalfBlue
            }
        }
    }
    
    @IBOutlet weak var skipLabel: UILabel! {
        didSet {
            skipLabel.font = .font(name: .roboto_regular, size: .r15)
            skipLabel.textColor = .bBlack
            skipLabel.text = Lang.get(valueFor: .l_welcome_skip)
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func skipButtonTapped(_ sender: UIButton) {
        
    }
    
    
}
