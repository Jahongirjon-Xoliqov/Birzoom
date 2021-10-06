//
//  DiscardPopupVC.swift
//  Birzoom
//
//  Created by Administrator on 17/09/21.
//

import UIKit

class DiscardPopupVC: UIViewController {
    
    
    @IBOutlet weak var popupImageView: UIImageView! {
        didSet {
            ///this should be changed to aspect fit
            popupImageView.contentMode = .scaleAspectFit
        }
    }
    
    
    @IBOutlet weak var dismissButton: UIButton! {
        didSet {
            dismissButton.tintColor = .white
            dismissButton.setTitle("", for: .normal)
            dismissButton.setImage(UIImage.image(name: .dissmis), for: .normal)
            dismissButton.tintColor = .white
        }
    }
    
    @IBOutlet weak var buyButton: UIButton! {
        didSet {
            buyButton.setTitle(Lang.get(valueFor: .b_popup_buy), for: .normal)
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
    
    @IBAction func buyButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
    @IBAction func dissmisButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
    @IBAction func tappedToDissmis(_ sender: UITapGestureRecognizer) {
        coordinateBackward(animated: false)
    }
    
}
