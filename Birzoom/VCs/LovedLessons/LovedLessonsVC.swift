//
//  LovedLessonsVC.swift
//  Birzoom
//
//  Created by Administrator on 14/10/21.
//

import UIKit

class LovedLessonsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var lovedLabel: UILabel! {
        didSet {
            lovedLabel.designAsTopTitle()
            lovedLabel.text = Lang.get(valueFor: .l_lovedLessons)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
            tableView.delegate = self
            tableView.dataSource = self
            tableView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
            tableView.register(TestLessonTVC.nib(), forCellReuseIdentifier: TestLessonTVC.identifier)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}


extension LovedLessonsVC: UITableViewDelegate {
    
}


extension LovedLessonsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestLessonTVC.identifier, for: indexPath) as? TestLessonTVC else {
            let temp = UITableViewCell()
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            temp.selectionStyle = .none
            return temp
        }
        cell.assign(isLast: indexPath.row == 2, isFirst: false)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerLabel = UILabel()
        headerLabel.textColor = .bBlack
        headerLabel.font = .font(name: .roboto_medium, size: .r20)
        headerLabel.text = "Beginner"
        
        let hv = UIView()
        hv.backgroundColor = .bHomeNavBackground
        hv.clipsToBounds = true
        hv.layer.cornerRadius = 8
        hv.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        hv.addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.topAnchor.constraint(equalTo: hv.topAnchor).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: hv.leadingAnchor, constant: 16).isActive = true
        headerLabel.bottomAnchor.constraint(equalTo: hv.bottomAnchor).isActive = true
        headerLabel.trailingAnchor.constraint(equalTo: hv.trailingAnchor).isActive = true
        
        let hvv = UIView()
        hvv.backgroundColor = .clear
        
        hvv.addSubview(hv)
        hv.translatesAutoresizingMaskIntoConstraints = false
        hv.topAnchor.constraint(equalTo: hvv.topAnchor).isActive = true
        hv.leadingAnchor.constraint(equalTo: hvv.leadingAnchor, constant: 16).isActive = true
        hv.bottomAnchor.constraint(equalTo: hvv.bottomAnchor).isActive = true
        hv.trailingAnchor.constraint(equalTo: hvv.trailingAnchor, constant: -16).isActive = true
        
        
        let separator = UIView()
        separator.backgroundColor = .bHomeSeparator
        
        hv.addSubview(separator)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.leadingAnchor.constraint(equalTo: hv.leadingAnchor, constant: 16).isActive = true
        separator.bottomAnchor.constraint(equalTo: hv.bottomAnchor).isActive = true
        separator.trailingAnchor.constraint(equalTo: hv.trailingAnchor, constant: -16).isActive = true
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        return hvv
        //CGRect(x: 0, y: 0, width: tableView.frame.width-32, height: 60)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        (CGFloat.scSize.width-32)/5
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let fv = UIView()
        fv.backgroundColor = .clear
        return fv
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        30
    }
    
}
