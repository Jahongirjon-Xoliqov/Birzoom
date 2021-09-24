//
//  NewsDetailedVC.swift
//  Birzoom
//
//  Created by Administrator on 24/09/21.
//

import UIKit

class NewsDetailedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(NewsMainDetailedTVC.nib(), forCellReuseIdentifier: NewsMainDetailedTVC.identifier)
            tableView.register(NewsAdditionalTVC.nib(), forCellReuseIdentifier: NewsAdditionalTVC.identifier)
            //tableView.contentInset = UIEdgeInsets(top: -50, left: 0, bottom: 50, right: 0)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
    }
    
    
}


extension NewsDetailedVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2 /// this value is static and can not be modified
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsMainDetailedTVC.identifier, for: indexPath) as? NewsMainDetailedTVC else {
                let temp = UITableViewCell()
                temp.selectionStyle = .none
                temp.backgroundColor = .clear
                temp.contentView.backgroundColor = .clear
                return temp
            }
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsAdditionalTVC.identifier, for: indexPath) as? NewsAdditionalTVC else {
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
