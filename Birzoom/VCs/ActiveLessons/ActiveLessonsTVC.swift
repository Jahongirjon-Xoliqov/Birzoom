//
//  ActiveLessonsTVC.swift
//  Birzoom
//
//  Created by Administrator on 07/10/21.
//

import UIKit

class ActiveLessonsTVC: UITableViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var lessonTitleLabel: UILabel! {
        didSet {
            lessonTitleLabel.font = .font(name: .roboto_medium, size: .r18)
            lessonTitleLabel.textColor = .bBlack
            lessonTitleLabel.text = "Beginner & Elementry 1-month"
        }
    }
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var prosentLabel: UILabel! {
        didSet {
            prosentLabel.font = .font(name: .roboto_medium, size: .r14)
            prosentLabel.textColor = .bBlack
            prosentLabel.text = "50%"
        }
    }
    
    @IBOutlet weak var buyersLabel: UILabel! {
        didSet {
            buyersLabel.font = .font(name: .roboto_medium, size: .r15)
            buyersLabel.textColor = .bBlack
            buyersLabel.text = "1200+ Sotib olingan"
        }
    }
    
    @IBOutlet var buyersImageViews: [UIImageView]!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override func draw(_ rect: CGRect) {
        buyersImageViews.forEach { (imgv) in
            imgv.clipsToBounds = true
            imgv.layer.cornerRadius = imgv.frame.height/2
            imgv.layer.borderWidth = 1
            imgv.layer.borderColor = UIColor.white.cgColor
        }
        bannerImageView.clipsToBounds = true
        bannerImageView.layer.cornerRadius = bannerImageView.frame.height/2
    }
    
}
