//
//  MeterCVC.swift
//  Birzoom
//
//  Created by Administrator on 12/10/21.
//

import UIKit

class MeterCVC: UICollectionViewCell {

    @IBOutlet weak var meterView: UIView!
    
    @IBOutlet weak var meterHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setVoice(power: CGFloat) {
        meterHeightConstraint.constant = max(power, 8)
    }

}
