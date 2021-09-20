//
//  HomeVC.swift
//  Birzoom
//
//  Created by Administrator on 18/09/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var topStatusBarView: UIView! {
        didSet {
            topStatusBarView.backgroundColor = .bHomeNavBackground
        }
    }
    
    @IBOutlet weak var navBarView: UIView! {
        didSet {
            navBarView.backgroundColor = .bHomeNavBackground
        }
    }
    
    @IBOutlet weak var navTitleLabel: UILabel! {
        didSet {
            navTitleLabel.text = Lang.get(valueFor: .l_home)
            navTitleLabel.font = .font(name: .roboto_medium, size: .r20)
            navTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var lampButton: UIButton! {
        didSet {
            lampButton.setTitle("", for: .normal)
            lampButton.setImage(.image(name: .lamp), for: .normal)
            lampButton.tintColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var bellButton: UIButton! {
        didSet {
            bellButton.setTitle("", for: .normal)
            bellButton.setImage(.image(name: .bell), for: .normal)
            bellButton.tintColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentInset = UIEdgeInsets(top: 80, left: 0, bottom: 0, right: 0)
        }
    }
    
    @IBOutlet weak var discountLabel: UILabel! {
        didSet {
            ///text is not static
            ///will be changed according to api
            discountLabel.text = "Kurslarni 50% chegirma"
            discountLabel.font = .font(name: .roboto_medium, size: .r20)
            discountLabel.textColor = .white
        }
    }
    
    @IBOutlet weak var calldownLabel: UILabel! {
        didSet {
            ///text is not static
            ///will be changed according to api
            calldownLabel.text = "23 : 59 : 59"
            calldownLabel.font = .font(name: .roboto_medium, size: .r24)
            calldownLabel.textColor = .white
            calldownLabel.textAlignment = .center
        }
    }
    
    @IBOutlet weak var testView: UIView! {
        didSet {
            testView.backgroundColor = .bHomePurple
        }
    }
    
    @IBOutlet weak var knowDegreeLabel: UILabel! {
        didSet {
            ///text is not static
            ///will be changed according to api
            knowDegreeLabel.text = "Darajangizni bilib oling"
            knowDegreeLabel.font = .font(name: .roboto_medium, size: .r20)
            knowDegreeLabel.textColor = .white
        }
    }
    
    @IBOutlet weak var testDescriptionLabel: UILabel! {
        didSet {
           
            testDescriptionLabel.numberOfLines = 0
            
            let style = NSMutableParagraphStyle()
            style.alignment = .left
            style.lineSpacing = 1.15
            style.minimumLineHeight = 22
            ///text is not static
            ///will be changed according to api
            let attributes = NSMutableAttributedString(string: "Bu bilan biz o'zingizga mos darsni \ntaklif qilishimiz mumkin bo'ladi", attributes: [
                NSAttributedString.Key.paragraphStyle: style,
                NSAttributedString.Key.font: UIFont.font(name: .roboto_regular, size: .r15),
                NSAttributedString.Key.foregroundColor: UIColor.white
            ])
            
            testDescriptionLabel.attributedText = attributes
            
        }
    }
    
    @IBOutlet weak var beginTestButton: UIButton! {
        didSet {
            beginTestButton.setTitle(Lang.get(valueFor: .b_home_begin_test), for: .normal)
            beginTestButton.setTitleColor(.bHomePurple, for: .normal)
            beginTestButton.titleLabel?.font = .font(name: .roboto_medium, size: .r18)
            beginTestButton.clipsToBounds = true
            beginTestButton.layer.cornerRadius = 8
            beginTestButton.backgroundColor = .white
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
    
    @IBAction func lampButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func bellButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func discountButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func calldownButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func beginTestButtonTapped(_ sender: UIButton) {
    }
    
}
