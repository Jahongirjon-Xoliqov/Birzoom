//
//  TestsCVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class TestsCVC: UICollectionViewCell {

    @IBOutlet weak var backView: UIView! {
        didSet {
            backView.clipsToBounds = true
            backView.layer.cornerRadius = 8
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.font = .font(name: .roboto_medium, size: .r16)
            titleLabel.textColor = .white
            titleLabel.text = "Word order"
        }
    }
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var beginButton: UIButton! {
        didSet {
            beginButton.backgroundColor = .white
            beginButton.clipsToBounds = true
            beginButton.layer.cornerRadius = 4
            beginButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            beginButton.setTitle(Lang.get(valueFor: .b_tests_begin), for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func beginButtonTapped(_ sender: UIButton) {
        
    }
    
    
    func assign() {
        titleLabel.text = "Word order"
        backView.backgroundColor = .bBlue
        beginButton.setTitleColor(.bBlue, for: .normal)
    }
    
}
