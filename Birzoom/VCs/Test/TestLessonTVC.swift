//
//  TestLessonTVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class TestLessonTVC: UITableViewCell {

    @IBOutlet weak var lessonImageView: ProfilImageView!
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var separatorView: UIView!
    
    @IBOutlet weak var numberLabel: UILabel! {
        didSet {
            numberLabel.font = .font(name: .roboto_regular, size: .r14)
            numberLabel.textColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var themeButton: UIButton! {
        didSet {
            themeButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            themeButton.setTitleColor(.bBlack, for: .normal)
            themeButton.titleLabel?.numberOfLines = 2
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func assign(isLast: Bool, isFirst: Bool) {
        numberLabel.text = "Lesson 1"
        themeButton.setTitle("How to talk about nation native speakers", for: .normal)
        separatorView.isHidden = false
        
        if isLast {
            backView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            separatorView.isHidden = true
        }
        
        if isFirst {
            backView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
        
        if !(isFirst || isLast) {
            backView.layer.cornerRadius = 0
        } else {
            backView.layer.cornerRadius = 8
        }
    }
    
}
