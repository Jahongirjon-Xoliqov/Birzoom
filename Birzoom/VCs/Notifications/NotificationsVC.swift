//
//  NotificationsVC.swift
//  Birzoom
//
//  Created by Administrator on 28/09/21.
//

import UIKit
import SwiftyStarRatingView

class NotificationsVC: UIViewController {

    @IBOutlet weak var navTitleLabel: UILabel! {
        didSet {
            navTitleLabel.text = Lang.get(valueFor: .l_notifications)
            navTitleLabel.textColor = .bBlack
            navTitleLabel.font = .font(name: .roboto_medium, size: .r18)
        }
    }
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(UIImage.image(name: .chevBack), for: .normal)
            backButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
            tableView.register(NotificationTVC.nib(), forCellReuseIdentifier: NotificationTVC.identifier)
        }
    }
    
    
    
    //rate
    @IBOutlet weak var rateView: UIView! {
        didSet {
            rateView.backgroundColor = .bHomeNavBackground
            rateView.layer.cornerRadius = 24
            rateView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }
    
    @IBOutlet weak var starsView: UIView!
    
    @IBOutlet weak var rateButton: UIButton! {
        didSet {
            rateButton.design(as: .mainGray)
            rateButton.backgroundColor = .bBlue
            rateButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    @IBOutlet weak var rateLabel: UILabel! {
        didSet {
            rateLabel.text = Lang.get(valueFor: .l_notifications_teaching_satisfy)
            rateLabel.font = .font(name: .roboto_regular, size: .r16)
            rateLabel.textColor = .bBlack
        }
    }
    
    
    //thanksgiving
    
    
    
    let starRatingView = SwiftyStarRatingView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStarsView()
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @objc
    fileprivate
    func userDidRate() {
        print(starRatingView.value)
    }

    fileprivate
    func configureStarsView() {
        starsView.backgroundColor = .clear
        starRatingView.backgroundColor = .clear
        
        starRatingView.maximumValue = 5         //default is 5
        starRatingView.minimumValue = 0         //default is 0
        starRatingView.value = 3                //default is 0
        starRatingView.tintColor = UIColor.yellow
        
        starRatingView.halfStarImage = UIImage.image(name: .starshalf)
        starRatingView.emptyStarImage = UIImage.image(name: .starsempty)
        starRatingView.filledStarImage = UIImage.image(name: .starsfill)
        
        starRatingView.addTarget(self, action: #selector(userDidRate), for: .valueChanged)
        starsView.addSubview(starRatingView)
        starRatingView.translatesAutoresizingMaskIntoConstraints = false
        starRatingView.topAnchor.constraint(equalTo: starsView.topAnchor).isActive = true
        starRatingView.bottomAnchor.constraint(equalTo: starsView.bottomAnchor).isActive = true
        starRatingView.leadingAnchor.constraint(equalTo: starsView.leadingAnchor).isActive = true
        starRatingView.bottomAnchor.constraint(equalTo: starsView.bottomAnchor).isActive = true
    }
    
}


extension NotificationsVC: UITableViewDelegate {
    
}


extension NotificationsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationTVC.identifier, for: indexPath) as? NotificationTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            temp.contentView.backgroundColor = .clear
            return temp
        }
        cell.assign(notification: indexPath.row != 0)
        return cell
    }
    
}
