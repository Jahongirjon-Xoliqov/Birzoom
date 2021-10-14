//
//  SavedVocabularyVC.swift
//  Birzoom
//
//  Created by Administrator on 14/10/21.
//

import UIKit

class SavedVocabularyVC: UIViewController {

    @IBOutlet weak var topNavView: UIView!
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var vocabularyLabel: UILabel! {
        didSet {
            vocabularyLabel.designAsTopTitle()
            vocabularyLabel.text = Lang.get(valueFor: .l_vocabulary)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.register(VocabularyTVC.nib(), forCellReuseIdentifier: VocabularyTVC.identifier)
            tableView.separatorStyle = .none
            tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        topNavView.addBottomShadow()
    }
    
}

extension SavedVocabularyVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: VocabularyTVC.identifier, for: indexPath) as? VocabularyTVC else {
            let temp = UITableViewCell()
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            temp.selectionStyle = .none
            return temp
        }
        
        return cell
    }
    
}
