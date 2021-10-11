//
//  NewPodcastsCVC.swift
//  Birzoom
//
//  Created by Administrator on 11/10/21.
//

import UIKit

class NewPodcastsCVC: UICollectionViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var podcastTitleLabel: UIButton! {
        didSet {
            podcastTitleLabel.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            podcastTitleLabel.setTitle("Headgum Dead Eyes", for: .normal)
            podcastTitleLabel.setTitleColor(.bBlack, for: .normal)
            podcastTitleLabel.titleLabel?.numberOfLines = 2
        }
    }
    
    @IBOutlet weak var dateLabel: UILabel! {
        didSet {
            dateLabel.font = .font(name: .roboto_regular, size: .r12)
            dateLabel.textColor = .bHomeScriptGray
            dateLabel.text = "12.07.2021"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
