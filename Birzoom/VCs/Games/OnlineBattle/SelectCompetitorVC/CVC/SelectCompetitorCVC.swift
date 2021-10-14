//
//  SelectCompetitorCVC.swift
//  Birzoom
//
//  Created by rakhmatillo topiboldiev on 13/10/21.
//

import UIKit

class SelectCompetitorCVC: UICollectionViewCell {

    @IBOutlet weak var competitorImgview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(heightOfCV: CGFloat){
        competitorImgview.layer.cornerRadius = heightOfCV / 2
        competitorImgview.clipsToBounds = true
    }

}
