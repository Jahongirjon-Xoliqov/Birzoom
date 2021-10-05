//
//  LogoutTVC.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit

protocol LogoutDelegate {
    func didTappedToLogout()
}



class LogoutTVC: UITableViewCell {
    
    @IBOutlet weak var logoutButton: UIButton! {
        didSet {
            logoutButton.setTitle(Lang.get(valueFor: .b_profil_logout), for: .normal)
            logoutButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            logoutButton.backgroundColor = .bHomeNavBackground
        }
    }

    var logoutDelegate: LogoutDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        logoutButton.alpha = 0

        UIView.animate(withDuration: 0.3) {
            self.logoutButton.alpha = 1
        } completion: { (_) in
            self.logoutDelegate.didTappedToLogout()
        }

    }
    
}
