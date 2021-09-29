//
//  NotificationTVC.swift
//  Birzoom
//
//  Created by Administrator on 28/09/21.
//

import UIKit

protocol LessonRateNotificationDelegate {
    func didTappedToRateLesson()
}


class NotificationTVC: UITableViewCell {

    @IBOutlet weak var dateButton: UIButton! {
        didSet {
            dateButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            dateButton.setTitle("12:35, 11.10.2021", for: .normal)
            dateButton.setTitleColor(#colorLiteral(red: 0.9843137255, green: 0.4470588235, blue: 0.5058823529, alpha: 1), for: .normal)
            dateButton.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.4431372549, blue: 0.5058823529, alpha: 0.1030442396)
            dateButton.clipsToBounds = true
            dateButton.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var noteTitleLabel: UILabel! {
        didSet {
            noteTitleLabel.text = "11-dars yakunlandi"
            noteTitleLabel.font = .font(name: .roboto_bold, size: .r16)
            noteTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var noteDescriptionLabel: UILabel! {
        didSet {
            noteDescriptionLabel.text = "Barakalla Jasur, yana bir darsni muvaffaqiyatli tamomlaganingizdan xursandmiz. Quiyidagi savollarga javob berishingizni so'raymiz:"
            noteDescriptionLabel.font = .font(name: .roboto_regular, size: .r16)
            noteDescriptionLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var hidableSView: UIStackView!
    
    @IBOutlet weak var questionLabel: UILabel! {
        didSet {
            questionLabel.text = "Bugungi darsda ishtirok etdingizmi?"
            questionLabel.font = .font(name: .roboto_medium, size: .r16)
            questionLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet var optionButtons: [UIButton]! {
        didSet {
            let titles = Lang.get(valueFor: .l_notifications_options).split(separator: ",")
            optionButtons.forEach { (btn) in
                btn.titleLabel?.font = .font(name: .roboto_regular, size: .r15)
                btn.setTitleColor(.bBlack, for: .normal)
                btn.tintColor = .bBlue
            }
            
            for i in 0..<optionButtons.count {
                optionButtons[i].setTitle(String(titles[i]), for: .normal)
            }
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    //public variables
    var lessonRateDelegate: LessonRateNotificationDelegate!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func assign(notification: Bool) {
        if notification {
            dateButton.isHidden = true
            hidableSView.isHidden = true
            continueButton.isHidden = true
            noteDescriptionLabel.textColor = .bBlack
        } else {
            dateButton.isHidden = false
            hidableSView.isHidden = false
            continueButton.isHidden = false
            noteDescriptionLabel.textColor = .bHomeTextGray
        }
    }
    
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        
        for b in optionButtons {
            if b == sender {
                b.setImage(UIImage.image(name: .circleFill), for: .normal)
            } else {
                b.setImage(UIImage.image(name: .circle), for: .normal)
            }
        }
        
        continueButton.backgroundColor = .bBlue
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        lessonRateDelegate.didTappedToRateLesson()
    }
    
    
    
}
