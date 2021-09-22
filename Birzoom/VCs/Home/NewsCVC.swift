//
//  NewsCVC.swift
//  Birzoom
//
//  Created by Administrator on 22/09/21.
//

import UIKit

class NewsCVC: UICollectionViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var gradientView: UIView! {
        didSet {
            gradientView.backgroundColor = .clear
            gradientView.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = "Yozni ingliz tili bilan birga o'tkaz"
            titleLabel.textColor = .white
            titleLabel.font = .font(name: .roboto_medium, size: .r18)
        }
    }
    
    @IBOutlet weak var typeLabel: UILabel! {
        didSet {
            typeLabel.text = "SPEAKING"
            typeLabel.textColor = .white
            typeLabel.font = .font(name: .roboto_medium, size: .r10)
        }
    }
    
    @IBOutlet weak var timeLabel: UILabel! {
        didSet {
            timeLabel.text = "20.08.21 | 12:30"
            timeLabel.textColor = .white
            timeLabel.font = .font(name: .roboto_medium, size: .r10)
        }
    }
    
    
    var gradientLayer: CAGradientLayer! {
        get {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
            return gradientLayer
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gradientLayer.frame = gradientView.bounds
        
        
    }

}
