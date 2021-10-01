//
//  CertificateTVC.swift
//  Birzoom
//
//  Created by Administrator on 01/10/21.
//

import UIKit

class CertificateTVC: UITableViewCell {

    @IBOutlet weak var certificateLabel: UILabel! {
        didSet {
            certificateLabel.font = .font(name: .roboto_medium, size: .r20)
            certificateLabel.text = Lang.get(valueFor: .l_profil_certificate)
            certificateLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var levelLabel: UILabel! {
        didSet {
            levelLabel.text = "Beginner A1"
            levelLabel.textColor = .bBlack
            levelLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var progressView: UIProgressView! {
        didSet {
            progressView.setProgress(0.2, animated: true)
            progressView.progressTintColor = .bProfileYellow
        }
    }
    
    @IBOutlet weak var percentLabel: UILabel! {
        didSet {
            percentLabel.text = "20%"
            percentLabel.textColor = .bBlack
            percentLabel.font = .font(name: .roboto_medium, size: .r14)
        }
    }
    
    @IBOutlet weak var levelImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
