//
//  SavedsCVC.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit

class SavedsCVC: UICollectionViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = "Vocabulary"
            titleLabel.textColor = .white
            titleLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = "127 words"
            descriptionLabel.textColor = .white
            descriptionLabel.font = .font(name: .roboto_regular, size: .r12)
        }
    }
    
    @IBOutlet var backImageViews: [UIImageView]!
    
    @IBOutlet weak var backView: UIView! {
        didSet {
            backView.clipsToBounds = true
            backView.layer.cornerRadius = 8
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //0 1
        //2 3
        //4 2
        
        switch arc4random_uniform(5) {
        case 0:
            for i in 0..<backImageViews.count {
                backImageViews[i].isHidden = !(i == 0 || i == 1)
            }
        case 1:
            for i in 0..<backImageViews.count {
                backImageViews[i].isHidden = !(i == 2 || i == 3)
            }
        case 2:
            for i in 0..<backImageViews.count {
                backImageViews[i].isHidden = !(i == 4 || i == 1)
            }
        case 3:
            for i in 0..<backImageViews.count {
                backImageViews[i].isHidden = !(i == 4)
            }
        case 4:
            for i in 0..<backImageViews.count {
                backImageViews[i].isHidden = !(i == 1)
            }
        default: break
        }
        
    }

}
