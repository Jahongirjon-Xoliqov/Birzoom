//
//  FAQVC.swift
//  Birzoom
//
//  Created by Administrator on 08/10/21.
//

import UIKit

class FAQVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var FAQTitleLabel: UILabel! {
        didSet {
            FAQTitleLabel.designAsTopTitle()
            FAQTitleLabel.text = Lang.get(valueFor: .l_faq)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(FAQTVC.nib(), forCellReuseIdentifier: FAQTVC.identifier)
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


extension FAQVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FAQTVC.identifier, for: indexPath) as? FAQTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            return temp
        }
        
        return cell
        
    }
    
}
