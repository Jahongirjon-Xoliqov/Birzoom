//
//  PodcastPlayTVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class PodcastPlayTVC: UITableViewCell {

    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var podcastNameLabel: UILabel! {
        didSet {
            podcastNameLabel.text = "Headgum Dead Eyes In Formal Language"
            podcastNameLabel.textColor = .bBlack
            podcastNameLabel.font = .font(name: .roboto_regular, size: .r16)
        }
    }
    
    @IBOutlet weak var micButton: UIButton! {
        didSet {
            micButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            micButton.setTitleColor(.bBlack, for: .normal)
            micButton.setTitle("1-qism", for: .normal)
        }
    }
    
    @IBOutlet weak var clockButton: UIButton! {
        didSet {
            clockButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
            clockButton.setTitleColor(.bBlack, for: .normal)
            clockButton.setTitle("12:45", for: .normal)
        }
    }
    
    @IBOutlet weak var playPauseButton: UIButton! {
        didSet {
            playPauseButton.imageView?.contentMode = .scaleAspectFit
            playPauseButton.tintColor = .bBlack
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
    
    
    
}
