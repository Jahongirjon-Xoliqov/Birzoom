//
//  ProfilVC.swift
//  Birzoom
//
//  Created by Administrator on 30/09/21.
//

import UIKit

class ProfilVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
            tableView.backgroundColor = .bHomeBackground
            tableView.dataSource = self
            tableView.register(ProfilTVC.nib(), forCellReuseIdentifier: ProfilTVC.identifier)
            tableView.register(BalanceTVC.nib(), forCellReuseIdentifier: BalanceTVC.identifier)
        }
    }
    
    @IBOutlet weak var navView: UIView! {
        didSet {
            navView.backgroundColor = .bHomeNavBackground
        }
    }
    
    @IBOutlet weak var navTitleLabel: UILabel! {
        didSet {
            navTitleLabel.text = Lang.get(valueFor: .l_profil)
            navTitleLabel.font = .font(name: .roboto_medium, size: .r20)
            navTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var settingsButton: UIButton! {
        didSet {
            settingsButton.setTitle("", for: .normal)
            settingsButton.setImage(UIImage.image(name: .settings), for: .normal)
            settingsButton.tintColor = .bHomeNavTint
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .bHomeNavBackground
    }

}


extension ProfilVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfilTVC.identifier, for: indexPath) as? ProfilTVC else {
                let temp = UITableViewCell()
                temp.backgroundColor = .clear
                temp.contentView.backgroundColor = .clear
                temp.selectionStyle = .none
                return temp
            }
            cell.assign()
            return cell
        }
        
        if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: BalanceTVC.identifier, for: indexPath) as? BalanceTVC else {
                let temp = UITableViewCell()
                temp.backgroundColor = .clear
                temp.contentView.backgroundColor = .clear
                temp.selectionStyle = .none
                return temp
            }
            return cell
        }
        
        return UITableViewCell()
    }
    
}
