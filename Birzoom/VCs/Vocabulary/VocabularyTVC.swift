//
//  VocabularyTVC.swift
//  Birzoom
//
//  Created by Administrator on 14/10/21.
//

import UIKit

class VocabularyTVC: UITableViewCell {

    @IBOutlet weak var speakerImageView: UIImageView!
    
    @IBOutlet weak var wordLabel: UILabel! {
        didSet {
            wordLabel.font = .font(name: .roboto_medium, size: .r14)
            wordLabel.textColor = .bBlack
            wordLabel.text = "anxious"
        }
    }
    
    @IBOutlet weak var transcriptionLabel: UILabel! {
        didSet {
            transcriptionLabel.font = .font(name: .roboto_regular, size: .r14)
            transcriptionLabel.textColor = .bHomeNavTint
            transcriptionLabel.text = "[ˈæŋkʃəs]"
        }
    }
    
    @IBOutlet weak var wordTypeLabel: UILabel! {
        didSet {
            wordTypeLabel.font = .font(name: .roboto_regular, size: .r14)
            wordTypeLabel.textColor = #colorLiteral(red: 1, green: 0.6745098039, blue: 0.1960784314, alpha: 1)
            wordTypeLabel.text = "adj."
        }
    }
    
    @IBOutlet weak var bookmarkImageView: UIImageView!
    
    @IBOutlet weak var translationLabel: UILabel! {
        didSet {
            translationLabel.font = .font(name: .roboto_italic, size: .r14)
            translationLabel.textColor = .bHomeScriptGray
            translationLabel.text = "tashvishli"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func bookmarkButtonTapped(_ sender: UIButton) {
    }
    
    
}
