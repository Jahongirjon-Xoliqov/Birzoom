//
//  LessonTVC.swift
//  Birzoom
//
//  Created by Administrator on 20/09/21.
//

import UIKit

class LessonTVC: UITableViewCell {

    @IBOutlet weak var lessonImageView: UIImageView!
    
    @IBOutlet weak var lessonTitleLabel: UILabel! {
        didSet {
            ///title is temprary
            lessonTitleLabel.text = "Lesson 1"
            lessonTitleLabel.font = .font(name: .roboto_regular, size: .r15)
            lessonTitleLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var lessonDescriptionLabel: UILabel! {
        didSet {
            ///all titles are temp
            lessonDescriptionLabel.text = "How to talk about nation native speakers"
            lessonDescriptionLabel.font = .font(name: .roboto_regular, size: .r18)
            lessonDescriptionLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var lockImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
