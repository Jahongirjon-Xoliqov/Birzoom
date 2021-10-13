//
//  TestLessonsVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class TestLessonsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var testTitleLabel: UILabel! {
        didSet {
            testTitleLabel.designAsTopTitle()
            testTitleLabel.text = Lang.get(valueFor: .l_tests)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(TestLessonTVC.nib(), forCellReuseIdentifier: TestLessonTVC.identifier)
            tableView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 24, right: 0)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}


extension TestLessonsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigate(to: .tests)
    }
    
}

extension TestLessonsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestLessonTVC.identifier, for: indexPath) as? TestLessonTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            return temp
        }
        cell.assign(isLast: indexPath.row == 19, isFirst: indexPath.row == 0)
        return cell
    }
    
}
