//
//  InterestsCVC.swift
//  Birzoom
//
//  Created by Administrator on 16/09/21.
//

import UIKit

class InterestsCVC: UICollectionViewCell {

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func assign(tag: InterestTag) {
        
        nameLabel.text = tag.name
        iconImageView.image = UIImage(named: tag.image)
        backView.backgroundColor = tag.isSelected ? .bSelectionBlue : .bBackground
        
    }
    
    func changeSelectionState(isSelected: Bool) {
        
        if isSelected {
            backView.backgroundColor = .bSelectionBlue
        } else {
            backView.backgroundColor = .bBackground
        }
        
    }
    
}
