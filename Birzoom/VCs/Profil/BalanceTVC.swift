//
//  BalanceTVC.swift
//  Birzoom
//
//  Created by Administrator on 30/09/21.
//

import UIKit

class BalanceTVC: UITableViewCell {

    @IBOutlet weak var balanceLabel: UILabel! {
        didSet {
            balanceLabel.text = "0,0 UZS"
            balanceLabel.textColor = .white
            balanceLabel.font = .font(name: .roboto_bold, size: .r28)
        }
    }
    
    @IBOutlet weak var replenishBalanceButton: UIButton! {
        didSet {
            replenishBalanceButton.backgroundColor = .white
            replenishBalanceButton.clipsToBounds = true
            replenishBalanceButton.layer.cornerRadius = 8
            replenishBalanceButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            replenishBalanceButton.setTitle(Lang.get(valueFor: .b_profil_replenish_balance), for: .normal)
            replenishBalanceButton.setTitleColor(#colorLiteral(red: 0.1333333333, green: 0.7098039216, blue: 0.9764705882, alpha: 1), for: .normal)
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func replenishBalanceButtonTapped(_ sender: UIButton) {
    }
    
    
}
