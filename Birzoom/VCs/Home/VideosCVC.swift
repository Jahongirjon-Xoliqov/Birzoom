//
//  VideosCVC.swift
//  Birzoom
//
//  Created by Administrator on 22/09/21.
//

import UIKit

class VideosCVC: UICollectionViewCell {

    @IBOutlet weak var videosContainerView: UIView! {
        didSet {
            videosContainerView.backgroundColor = .bHomeNavBackground
            videosContainerView.clipsToBounds = true
            videosContainerView.layer.cornerRadius = 8
        }
    }
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = "These Alternatives To Sound Like"
            titleLabel.textColor = .bBlack
            titleLabel.font = .font(name: .roboto_regular, size: .r18)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = "Speaking | elementary"
            descriptionLabel.textColor = .bHomeNavTint
            descriptionLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    
}
