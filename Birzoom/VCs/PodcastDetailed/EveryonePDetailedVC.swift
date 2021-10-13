//
//  EveryonePDetailedVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class EveryonePDetailedVC: UIViewController {

    @IBOutlet weak var backButton: UIButton!{
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var everyonePLabel: UILabel! {
        didSet {
            everyonePLabel.designAsTopTitle()
            everyonePLabel.text = Lang.get(valueFor: .l_podcasts_forEveryone)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(EveryonePDetailedDescTVC.nib(), forCellReuseIdentifier: EveryonePDetailedDescTVC.identifier)
            tableView.register(PodcastPlayTVC.nib(), forCellReuseIdentifier: PodcastPlayTVC.identifier)
            tableView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 24, right: 0)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
}


extension EveryonePDetailedVC: UITableViewDelegate {
    
}

extension EveryonePDetailedVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: EveryonePDetailedDescTVC.identifier, for: indexPath) as? EveryonePDetailedDescTVC else {
                let temp = UITableViewCell()
                temp.selectionStyle = .none
                temp.backgroundColor = .clear
                temp.contentView.backgroundColor = .clear
                return temp
            }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PodcastPlayTVC.identifier, for: indexPath) as? PodcastPlayTVC else {
                let temp = UITableViewCell()
                temp.selectionStyle = .none
                temp.backgroundColor = .clear
                temp.contentView.backgroundColor = .clear
                return temp
            }
            return cell
        }
        
        
    }
    
}

