//
//  LogoutVC.swift
//  Birzoom
//
//  Created by Administrator on 05/10/21.
//

import UIKit

class LogoutVC: UIViewController {

    @IBOutlet weak var logoutLabel: UILabel! {
        didSet {
            logoutLabel.text = Lang.get(valueFor: .l_logout)
            logoutLabel.textColor = .bBlack
            logoutLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var confirmLabel: UILabel! {
        didSet {
            confirmLabel.text = Lang.get(valueFor: .l_logout_confirm)
            confirmLabel.textColor = .bBlack
            confirmLabel.font = .font(name: .roboto_regular, size: .r16)
            confirmLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet weak var cancelButton: UIButton! {
        didSet {
            cancelButton.setTitle(Lang.get(valueFor: .b_cancel), for: .normal)
            cancelButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            cancelButton.setTitleColor(.bBlue, for: .normal)
            cancelButton.backgroundColor = UIColor.bBlue.withAlphaComponent(0.2)
            cancelButton.clipsToBounds = true
            cancelButton.layer.cornerRadius = 8
        }
    }
    
    @IBOutlet weak var logoutButton: UIButton! {
        didSet {
            logoutButton.setTitle(Lang.get(valueFor: .b_logout), for: .normal)
            logoutButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            logoutButton.setTitleColor(.bRed, for: .normal)
            logoutButton.backgroundColor = UIColor.bRed.withAlphaComponent(0.2)
            logoutButton.clipsToBounds = true
            logoutButton.layer.cornerRadius = 8
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
}
