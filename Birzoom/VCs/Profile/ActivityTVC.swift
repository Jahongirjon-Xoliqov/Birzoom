//
//  ActivityTVC.swift
//  Birzoom
//
//  Created by Administrator on 01/10/21.
//

import UIKit

class ActivityTVC: UITableViewCell {

    @IBOutlet weak var activityLabel: UILabel! {
        didSet {
            activityLabel.font = .font(name: .roboto_medium, size: .r20)
            activityLabel.text = Lang.get(valueFor: .l_profil_myactivity)
            activityLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var targetImageView: UIImageView!
    
    @IBOutlet weak var goalLabel: UILabel! {
        didSet {
            goalLabel.text = "Haftalik maqsad"
            goalLabel.textColor = .bBlack
            goalLabel.font = .font(name: .roboto_regular, size: .r16)
        }
    }
    
    @IBOutlet weak var goalDescriptionButton: UIButton! {
        didSet {
            goalDescriptionButton.setTitle("Mashaqqatli", for: .normal)
            goalDescriptionButton.setTitleColor(.bBlue, for: .normal)
            goalDescriptionButton.titleLabel?.font = .font(name: .roboto_regular, size: .r12)
            goalDescriptionButton.backgroundColor = .bHalfBlue
            goalDescriptionButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
            goalDescriptionButton.clipsToBounds = true
            goalDescriptionButton.layer.cornerRadius = 4
        }
    }
    
    @IBOutlet weak var goalButton: UIButton! {
        didSet {
            goalButton.setTitle(Lang.get(valueFor: .b_profil_goal), for: .normal)
            goalButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            goalButton.setTitleColor(.bBlack, for: .normal)
            goalButton.clipsToBounds = true
            goalButton.layer.cornerRadius = 8
            goalButton.layer.borderWidth = 1
            goalButton.layer.borderColor = UIColor.bHomeNavTint.cgColor
        }
    }
    
    @IBOutlet weak var shadowView: UIView! {
        didSet {
            shadowView.backgroundColor = .clear
            shadowView.layer.shadowColor = UIColor.bProfileShadowGray.cgColor
            shadowView.layer.shadowRadius = 12
            shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
            shadowView.layer.shadowOpacity = 1
        }
    }
    
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var lessonsLabel: UILabel! {
        didSet {
            lessonsLabel.text = "3"
            lessonsLabel.font = .font(name: .roboto_medium, size: .r36)
            lessonsLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var homeworkLabel: UILabel! {
        didSet {
            homeworkLabel.text = "1"
            homeworkLabel.font = .font(name: .roboto_medium, size: .r36)
            homeworkLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var lessonsButton: UIButton! {
        didSet {
            lessonsButton.setTitle(Lang.get(valueFor: .l_profil_lessons), for: .normal)
            lessonsButton.setTitleColor(.bBlack, for: .normal)
            lessonsButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
        }
    }
    
    @IBOutlet weak var homeworkButton: UIButton! {
        didSet {
            homeworkButton.setTitle(Lang.get(valueFor: .l_profil_homework), for: .normal)
            homeworkButton.setTitleColor(.bBlack, for: .normal)
            homeworkButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
