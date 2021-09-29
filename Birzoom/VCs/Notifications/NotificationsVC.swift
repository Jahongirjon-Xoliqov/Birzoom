//
//  NotificationsVC.swift
//  Birzoom
//
//  Created by Administrator on 28/09/21.
//

import UIKit

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
            
            rateView.transform = CGAffineTransform(translationX: 0, y: 500)
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
    
    @IBOutlet var starButtons: [UIButton]!
    
    
    
    //thanksgiving
    @IBOutlet weak var thanksView: UIView! {
        didSet {
            thanksView.backgroundColor = .bHomeNavBackground
            thanksView.layer.cornerRadius = 24
            thanksView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            
            thanksView.transform = CGAffineTransform(translationX: 0, y: 500)
        }
    }
    
    @IBOutlet weak var thanksLabel: UILabel! {
        didSet {
            thanksLabel.text?.setThankgiving(to: "Jahongirjon")
            thanksLabel.font = .font(name: .roboto_regular, size: .r16)
            thanksLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var thanksButton: UIButton! {
        didSet {
            thanksButton.design(as: .mainGray)
            thanksButton.backgroundColor = .bBlue
            thanksButton.setTitle(Lang.get(valueFor: .b_notifications_return_home), for: .normal)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
    @IBAction func starButtonsTapped(_ sender: UIButton) {
        for i in 0...4 {
            if i <= sender.tag {
                starButtons[i].setImage(UIImage.image(name: .starsfill), for: .normal)
            } else {
                starButtons[i].setImage(UIImage.image(name: .starsempty), for: .normal)
            }
        }
    }
    
    @IBAction func rateButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            self.thanksView.transform = .identity
            self.rateView.transform = CGAffineTransform(translationX: 0, y: 500)
        }
    }
    
    @IBAction func goBackHomeButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.thanksView.transform = CGAffineTransform(translationX: 0, y: 500)
        } completion: { (_) in
            self.navigateBackward()
        }

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
        cell.lessonRateDelegate = self
        cell.assign(notification: indexPath.row != 0)
        return cell
    }
    
}

extension NotificationsVC: LessonRateNotificationDelegate {
    func didTappedToRateLesson() {
        UIView.animate(withDuration: 0.5) {
            self.rateView.transform = .identity
        }
    }
    
}
