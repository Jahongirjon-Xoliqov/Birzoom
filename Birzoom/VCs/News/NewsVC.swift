//
//  NewsVC.swift
//  Birzoom
//
//  Created by Administrator on 24/09/21.
//

import UIKit

class NewsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(UIImage.image(name: .chevBack), for: .normal)
            backButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var navTitleLabel: UILabel! {
        didSet {
            navTitleLabel.text = Lang.get(valueFor: .l_news)
            navTitleLabel.textColor = .bBlack
            navTitleLabel.font = .font(name: .roboto_medium, size: .r18)
        }
    }
    
    @IBOutlet weak var newsTableView: UITableView! {
        didSet {
            newsTableView.delegate = self
            newsTableView.dataSource = self
            newsTableView.separatorStyle = .none
            newsTableView.register(NewsTVC.nib(), forCellReuseIdentifier: NewsTVC.identifier)
            newsTableView.contentInset = UIEdgeInsets(top: 80, left: 0, bottom: 20, right: 0)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
}


extension NewsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigate(to: .newsDetailed)
    }
    
}


extension NewsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10 //temp value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsTVC.identifier, for: indexPath) as? NewsTVC else {
            let temp = UITableViewCell()
            temp.contentView.backgroundColor = .clear
            temp.backgroundColor = .clear
            temp.selectionStyle = .none
            return temp
        }
        
        return cell
    }
    
}
