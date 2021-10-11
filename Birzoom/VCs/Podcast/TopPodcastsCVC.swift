//
//  TopPodcastsCVC.swift
//  Birzoom
//
//  Created by Administrator on 11/10/21.
//

import UIKit

class TopPodcastsCVC: UICollectionViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var podcastTitleLabel: UILabel! {
        didSet {
            podcastTitleLabel.font = .font(name: .roboto_medium, size: .r16)
            podcastTitleLabel.text = "LoveTaps"
            podcastTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var podcastDescriptionButton: UIButton! {
        didSet {
            podcastDescriptionButton.setTitle("She was one the world youngest self-made female Comedians", for: .normal)
            podcastDescriptionButton.setTitleColor(.bHomeScriptGray, for: .normal)
            podcastDescriptionButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            podcastDescriptionButton.titleLabel?.numberOfLines = 0
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
