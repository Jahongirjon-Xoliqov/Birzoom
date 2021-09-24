//
//  NewsMainDetailedTVC.swift
//  Birzoom
//
//  Created by Administrator on 24/09/21.
//

import UIKit

class NewsMainDetailedTVC: UITableViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var themeTitleLabel: UILabel! {
        didSet {
            themeTitleLabel.text = "30 UX Design Resources You Should Know About"
            themeTitleLabel.textColor = .bBlack
            themeTitleLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var themeDetailedLabel: UILabel! {
        didSet {
            themeDetailedLabel.text = "14 Avgust 2021 \n5 min ⚬ Maqola ⚬ Intermediate"
            themeDetailedLabel.textColor = .bHomeNavTint
            themeDetailedLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var themeDescriptionLabel: UILabel! {
        didSet {
            themeDescriptionLabel.text = """
            We’re all stuck at home right now. If you’re like me, you’re probably using this time to spring clean, organize your bookmarks bar, write letters to friends and family, and maybe even learn something new.

            As someone who’s fairly new to the field of UX design, I reached out to other Designlab team members, mentors, students, and community members, for advice on which UX design resources to look to for learning.

            These UX resources span books, blogs, podcasts, videos, newsletters, and more! Check them out, and let us know what we’ve missed 🤓
            """
            themeDescriptionLabel.textColor = .bHomeScriptGray
            themeDescriptionLabel.font = .font(name: .roboto_regular, size: .r16)
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
