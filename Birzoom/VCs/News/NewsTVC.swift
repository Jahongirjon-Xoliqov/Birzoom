//
//  NewsTVC.swift
//  Birzoom
//
//  Created by Administrator on 24/09/21.
//

import UIKit

class NewsTVC: UITableViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var newsTitleLabel: UILabel! {
        didSet {
            newsTitleLabel.text = "Yozni ingliz tili bilan birga o'tkazing"
            newsTitleLabel.textColor = .bBlack
            newsTitleLabel.font = .font(name: .roboto_medium, size: .r22)
        }
    }
    
    @IBOutlet weak var typeLabel: UILabel! {
        didSet {
            typeLabel.text = "SPEAKING"
            typeLabel.textColor = .bHomeNavTint
            typeLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var timeLabel: UILabel! {
        didSet {
            timeLabel.text = "20.08.21 | 12:30"
            timeLabel.textColor = .bHomeNavTint
            timeLabel.font = .font(name: .roboto_regular, size: .r14)
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



