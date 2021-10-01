//
//  ProgressTVC.swift
//  Birzoom
//
//  Created by Administrator on 01/10/21.
//

import UIKit

class ProgressTVC: UITableViewCell {

    @IBOutlet weak var progressLabel: UILabel! {
        didSet {
            progressLabel.font = .font(name: .roboto_medium, size: .r20)
            progressLabel.text = Lang.get(valueFor: .l_profil_certificate)
            progressLabel.textColor = .bBlack
        }
    }
    
    
    ///speaking
    @IBOutlet weak var speakingLabel: UILabel! {
        didSet {
            speakingLabel.text = "Speaking"
            speakingLabel.textColor = .bBlack
            speakingLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var speakingProgressView: UIProgressView! {
        didSet {
            speakingProgressView.setProgress(12/107, animated: true)
        }
    }
    
    @IBOutlet weak var speakingNumberLabel: UILabel! {
        didSet {
            speakingNumberLabel.text = "12 / 107"
            speakingNumberLabel.textColor = .bBlack
            speakingNumberLabel.font = .font(name: .roboto_medium, size: .r14)
        }
    }
    
    @IBOutlet weak var speakingImageView: UIImageView!
    
    
    
    ///grammar
    @IBOutlet weak var grammarLabel: UILabel! {
        didSet {
            grammarLabel.text = "Grammar"
            grammarLabel.textColor = .bBlack
            grammarLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var grammarProgressView: UIProgressView! {
        didSet {
            grammarProgressView.setProgress(30/107, animated: true)
        }
    }
    
    @IBOutlet weak var grammarNumberLabel: UILabel! {
        didSet {
            grammarNumberLabel.text = "30 / 107"
            grammarNumberLabel.textColor = .bBlack
            grammarNumberLabel.font = .font(name: .roboto_medium, size: .r14)
        }
    }
    
    @IBOutlet weak var grammarImageView: UIImageView!
    
    
    
    
    ///listening
    @IBOutlet weak var listeningLabel: UILabel! {
        didSet {
            listeningLabel.text = "Listening"
            listeningLabel.textColor = .bBlack
            listeningLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var listeningProgressView: UIProgressView! {
        didSet {
            listeningProgressView.setProgress(90/107, animated: true)
        }
    }
    
    @IBOutlet weak var listeningNumberLabel: UILabel! {
        didSet {
            listeningNumberLabel.text = "90 / 107"
            listeningNumberLabel.textColor = .bBlack
            listeningNumberLabel.font = .font(name: .roboto_medium, size: .r14)
        }
    }
    
    @IBOutlet weak var listeningImageView: UIImageView!
    
    
    
    
    ///vocabulary
    @IBOutlet weak var vocabularyLabel: UILabel! {
        didSet {
            vocabularyLabel.text = "Vocabulary"
            vocabularyLabel.textColor = .bBlack
            vocabularyLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var vocabularyProgressView: UIProgressView! {
        didSet {
            vocabularyProgressView.setProgress(54/107, animated: true)
        }
    }
    
    @IBOutlet weak var vocabularyNumberLabel: UILabel! {
        didSet {
            vocabularyNumberLabel.text = "54 / 107"
            vocabularyNumberLabel.textColor = .bBlack
            vocabularyNumberLabel.font = .font(name: .roboto_medium, size: .r14)
        }
    }
    
    @IBOutlet weak var vocabularyImageView: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
