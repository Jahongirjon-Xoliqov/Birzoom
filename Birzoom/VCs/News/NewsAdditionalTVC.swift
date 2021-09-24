//
//  NewsAdditionalTVC.swift
//  Birzoom
//
//  Created by Administrator on 24/09/21.
//

import UIKit

class NewsAdditionalTVC: UITableViewCell {

    @IBOutlet weak var breakingNewsLabel: UILabel! {
        didSet {
            breakingNewsLabel.text = "Breaking news"
            breakingNewsLabel.textColor = .bBlack
            breakingNewsLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var newsDescriptionLabel: UILabel! {
        didSet {
            newsDescriptionLabel.text = """
                #1: Design Matters Podcast by Debbie Millman

                The world’s first podcast about design, and an inquiry into the broader world of creative culture through wide-ranging conversations with designers, writers, artists, curators, musicians, and other luminaries of contemporary thought.

                #2: UI Breakfast Podcast
                Conversations about UI/UX design, products, marketing, and much more.

                #3: Design Better Podcast by InVision
                Listen to chats with design leaders to uncover how they achieved success, and hear stories and insights from the best in product design.

                #4: The Futur Podcast
                The Futur is an online education platform loaded with content and tools to help you build better design skills.
                """
            
            newsDescriptionLabel.textColor = .bHomeScriptGray
            newsDescriptionLabel.font = .font(name: .roboto_regular, size: .r16)
            
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
