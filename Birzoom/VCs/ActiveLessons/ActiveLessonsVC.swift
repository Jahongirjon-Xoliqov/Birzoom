//
//  ActiveLessonsVC.swift
//  Birzoom
//
//  Created by Administrator on 07/10/21.
//

import UIKit

class ActiveLessonsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var activeLessonsTitleLabel: UILabel! {
        didSet {
            activeLessonsTitleLabel.designAsTopTitle()
            activeLessonsTitleLabel.text = Lang.get(valueFor: .l_active_lessons)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(ActiveLessonsTVC.nib(), forCellReuseIdentifier: ActiveLessonsTVC.identifier)
            tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
}


extension ActiveLessonsVC: UITableViewDelegate {
    
}

extension ActiveLessonsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ActiveLessonsTVC.identifier, for: indexPath) as? ActiveLessonsTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            return temp
        }
        return cell
        
    }
    
}
