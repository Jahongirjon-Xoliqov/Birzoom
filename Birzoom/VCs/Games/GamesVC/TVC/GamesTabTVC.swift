//
//  GamesTabTVC.swift
//  Birzoom
//
//  Created by rakhmatillo topiboldiev on 13/10/21.
//

import UIKit

class GamesTabTVC: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(tempIndexRow: Int){
        if tempIndexRow == 0{
            containerView.backgroundColor = #colorLiteral(red: 0.6522474885, green: 0.2974840403, blue: 0.9091005921, alpha: 1)
            mainLabel.text = "Leaderboard"
            descriptionLabel.text = "Bu joyda barcha ishtirokchilar darajalari bilan tanishing"
            imgView.image = UIImage(named: "GamesTabSovrin")
        }else{
            containerView.backgroundColor = #colorLiteral(red: 0, green: 0.7706015706, blue: 0.6254970431, alpha: 1)
            mainLabel.text = "Online Battle"
            descriptionLabel.text = "Battleda boshqa o’quvchilar bilan bilimingizni sinab ko’ring"
            imgView.image = UIImage(named: "GamesTabBattle")
        }
    }
}
