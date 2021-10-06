//
//  PayHistoryTVC.swift
//  Birzoom
//
//  Created by Administrator on 06/10/21.
//

import UIKit

class PayHistoryTVC: UITableViewCell {

    @IBOutlet weak var bannerImageView: ProfilImageView!
    
    @IBOutlet weak var transactionNameLabel: UIButton! {
        didSet {
            transactionNameLabel.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            transactionNameLabel.setTitleColor(.bBlack, for: .normal)
            transactionNameLabel.titleLabel?.numberOfLines = 2
            transactionNameLabel.setTitle("IELTS Writing kursi", for: .normal)
        }
    }
    
    @IBOutlet weak var dateLabel: UILabel! {
        didSet {
            dateLabel.font = .font(name: .roboto_regular, size: .r12)
            dateLabel.textColor = .bHomeNavTint
            dateLabel.text = "15.02.2021"
        }
    }
    
    @IBOutlet weak var amountLabel: UILabel! {
        didSet {
            amountLabel.font = .font(name: .roboto_medium, size: .r14)
            amountLabel.textColor = .bBlue
            amountLabel.text = "-299 000 so'm"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
