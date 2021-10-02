//
//  ResultsTVC.swift
//  Birzoom
//
//  Created by Administrator on 01/10/21.
//

import UIKit

class ResultsTVC: UITableViewCell {

    @IBOutlet weak var resultsLabel: UILabel! {
        didSet {
            resultsLabel.font = .font(name: .roboto_medium, size: .r20)
            resultsLabel.text = Lang.get(valueFor: .l_home_results)
            resultsLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var starsLabel: UILabel! {
        didSet {
            starsLabel.text = Lang.get(valueFor: .l_home_stars)
            starsLabel.font = .font(name: .roboto_regular, size: .r16)
            starsLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var starsCountLabel: UILabel! {
        didSet {
            starsCountLabel.text = "12"
            starsCountLabel.textColor = .bBlack
            starsCountLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var dictionaryLabel: UILabel! {
        didSet {
            dictionaryLabel.text = Lang.get(valueFor: .l_home_dictionary)
            dictionaryLabel.font = .font(name: .roboto_regular, size: .r16)
            dictionaryLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var dictionaryCountLabel: UILabel! {
        didSet {
            dictionaryCountLabel.text = "23"
            dictionaryCountLabel.textColor = .bBlack
            dictionaryCountLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var placeLabel: UILabel! {
        didSet {
            placeLabel.text = Lang.get(valueFor: .l_home_place)
            placeLabel.font = .font(name: .roboto_regular, size: .r16)
            placeLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var placeCountLabel: UILabel! {
        didSet {
            placeCountLabel.text = "232"
            placeCountLabel.textColor = .bBlack
            placeCountLabel.font = .font(name: .roboto_medium, size: .r20)
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
