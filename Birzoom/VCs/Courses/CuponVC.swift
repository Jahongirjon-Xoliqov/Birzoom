//
//  CuponVC.swift
//  Birzoom
//
//  Created by Administrator on 25/09/21.
//

import UIKit

class CuponVC: UIViewController {

    
    @IBOutlet weak var popupImageView: UIImageView! {
        didSet {
            ///this should be changed to aspect fit
            popupImageView.contentMode = .scaleAspectFit
        }
    }
    
    
    @IBOutlet weak var dismissButton: UIButton! {
        didSet {
            dismissButton.tintColor = .bBlack
            dismissButton.setTitle("", for: .normal)
            dismissButton.setImage(UIImage.image(name: .dissmis), for: .normal)
            dismissButton.tintColor = .white
        }
    }
    
    @IBOutlet weak var buyButton: UIButton! {
        didSet {
            buyButton.setTitle(Lang.get(valueFor: .b_getcupon), for: .normal)
            buyButton.backgroundColor = .bBlue
            buyButton.setTitleColor(.white, for: .normal)
            buyButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            buyButton.clipsToBounds = true
            buyButton.layer.cornerRadius = 8
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
