//
//  EveryonePDetailedDescTVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class EveryonePDetailedDescTVC: UITableViewCell {

    @IBOutlet weak var backContainerView: UIView! {
        didSet {
            backContainerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            backContainerView.layer.cornerRadius = 8
        }
    }
    
    
    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var podcastNameLabel: UILabel! {
        didSet {
            podcastNameLabel.textColor = .bBlack
            podcastNameLabel.font = .font(name: .roboto_medium, size: .r20)
            podcastNameLabel.text = "WHATEVER IT TAKES FOR ONE"
        }
    }
    
    @IBOutlet weak var partNumberLabel: UILabel! {
        didSet {
            partNumberLabel.textColor = .bHomeNavTint
            partNumberLabel.font = .font(name: .roboto_regular, size: .r14)
            partNumberLabel.text = "100 Qism"
        }
    }
    
    @IBOutlet weak var commentsLabel: UILabel! {
        didSet {
            commentsLabel.font = .font(name: .roboto_regular, size: .r14)
            commentsLabel.textColor = .bHomeNavTint
            commentsLabel.text = Lang.get(valueFor: .l_podcasts_comments)
        }
    }
    
    @IBOutlet weak var shareLabel: UILabel! {
        didSet {
            shareLabel.font = .font(name: .roboto_regular, size: .r14)
            shareLabel.textColor = .bHomeNavTint
            shareLabel.text = Lang.get(valueFor: .l_podcasts_share)
        }
    }
    
    @IBOutlet weak var saveLabel: UILabel! {
        didSet {
            saveLabel.font = .font(name: .roboto_regular, size: .r14)
            saveLabel.textColor = .bHomeNavTint
            saveLabel.text = Lang.get(valueFor: .l_podcasts_save)
        }
    }
    
    @IBOutlet weak var bookmarkImageView: UIImageView!
    
    @IBOutlet weak var scriptLabel: UILabel! {
        didSet {
            scriptLabel.text = "Barcha yoshdagilar uchun mos keluvchi boshlang'ich kursi ingliz tilini dan boshlovchilar uchun alifbodan elementar darajagacha qamrab oluvchi barcha bilimlarni batafsil tushuntirib beradi. Ushbu kurs bitiruvchilari malakali ustozlarning jonli muloqotlaridan so'ng, o'zlarini tanishtira olishlari va kundalik hayotdagi mavzular."
            scriptLabel.textColor = .bHomeScriptGray
            scriptLabel.font = .font(name: .roboto_regular, size: .r16)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func commentButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
    }
    
}
