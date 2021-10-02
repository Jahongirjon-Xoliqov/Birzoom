//
//  ProfilTVC.swift
//  Birzoom
//
//  Created by Administrator on 30/09/21.
//

import UIKit

class ProfilTVC: UITableViewCell {
    
    @IBOutlet weak var profilImageView: ProfilImageView!
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = "Alex Herbert"
            nameLabel.textColor = .bBlack
            nameLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var numberLabel: UILabel! {
        didSet {
            numberLabel.text = "+998 99 345 34 542"
            numberLabel.textColor = .bBlack
            numberLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var editButton: UIButton! {
        didSet {
            editButton.setTitle("", for: .normal)
            editButton.setImage(UIImage.image(name: .edit), for: .normal)
            editButton.tintColor = .bBlue
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        profilImageView.configureUI(withName: "Alex")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        profilImageView.layer.cornerRadius = profilImageView.frame.height/2
    }
    
    @IBAction func editButtonTapped(_ sender: UIButton) {
        
    }
    
    func assign() {
        
    }
    
}
