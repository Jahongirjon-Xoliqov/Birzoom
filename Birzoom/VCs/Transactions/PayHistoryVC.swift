//
//  PayHistoryVC.swift
//  Birzoom
//
//  Created by Administrator on 06/10/21.
//

import UIKit

class PayHistoryVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var transactionsLabel: UILabel! {
        didSet {
            transactionsLabel.designAsTopTitle()
            transactionsLabel.text = Lang.get(valueFor: .l_settings_transactions)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(PayHistoryTVC.nib(), forCellReuseIdentifier: PayHistoryTVC.identifier)
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

extension PayHistoryVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinate(to: .transactionsDetailed, animated: false)
    }
    
}

extension PayHistoryVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PayHistoryTVC.identifier, for: indexPath) as? PayHistoryTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            return temp
        }
        
        return cell
    }
    
}
