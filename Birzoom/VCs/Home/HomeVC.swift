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
    
    
    
    ///profil / results
    @IBOutlet weak var resultsView: UIView! {
        didSet {
            resultsView.backgroundColor = .bHomeNavBackground
            resultsView.layer.cornerRadius = 8
            resultsView.layer.masksToBounds = false
            resultsView.layer.shadowColor = UIColor.bHomeShadowGray.cgColor
            resultsView.layer.shadowOffset = .init(width: 0, height: 4)
            resultsView.layer.shadowRadius = 12
            resultsView.layer.shadowOpacity = 0.1
        }
    }
    
    @IBOutlet weak var resultsHidableView: UIView!
    
    
    @IBOutlet weak var resultsLabel: UILabel! {
        didSet {
            resultsLabel.font = .font(name: .roboto_medium, size: .r20)
            resultsLabel.text = Lang.get(valueFor: .l_home_results)
            resultsLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var resultsExpandableButton: UIButton! {
        didSet {
            resultsExpandableButton.setTitle("", for: .normal)
            resultsExpandableButton.setImage(UIImage.image(name: .uparrow), for: .normal)
            resultsExpandableButton.tintColor = .bBlue
            resultsExpandableButton.backgroundColor = .bHomeExpbBlue
            resultsExpandableButton.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var userImageView: UIImageView! {
        didSet {
            userImageView.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var userNameLabel: UILabel! {
        didSet {
            userNameLabel.font = .font(name: .roboto_regular, size: .r18)
            userNameLabel.text = "Shahzoda Mavlonova"
            userNameLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var userLevelLabel: UILabel! {
        didSet {
            userLevelLabel.text = "Beginner A1"
            userLevelLabel.font = .font(name: .roboto_medium, size: .r18)
            userLevelLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var userProgressView: UIProgressView! {
        didSet {
            userProgressView.trackTintColor = .bHomeProgressWhite
            userProgressView.progressTintColor = .bBlue
            userProgressView.progressViewStyle = .default
            userProgressView.setProgress(0.3, animated: true)
            
        }
    }
    
    @IBOutlet weak var userProgressLabel: UILabel! {
        didSet {
            userProgressLabel.text = "30%"
            userProgressLabel.font = .font(name: .roboto_medium, size: .r14)
            userProgressLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet var statisticViews: [UIView]! {
        didSet {
            for i in statisticViews {
                i.clipsToBounds = true
                i.layer.borderWidth = 1
                i.layer.borderColor = UIColor.bHomeBorderGray.cgColor
            }
        }
    }
    
    @IBOutlet weak var userStarsHintLabel: UILabel! {
        didSet {
            userStarsHintLabel.text = Lang.get(valueFor: .l_home_stars)
            userStarsHintLabel.font = .font(name: .roboto_regular, size: .r16)
            userStarsHintLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var userStarsCountLabel: UILabel! {
        didSet {
            userStarsCountLabel.text = "12"
            userStarsCountLabel.textColor = .bBlack
            userStarsCountLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var userDictionaryHintLabel: UILabel! {
        didSet {
            userDictionaryHintLabel.text = Lang.get(valueFor: .l_home_dictionary)
            userDictionaryHintLabel.font = .font(name: .roboto_regular, size: .r16)
            userDictionaryHintLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var userDictionaryCountLabel: UILabel! {
        didSet {
            userDictionaryCountLabel.text = "23"
            userDictionaryCountLabel.textColor = .bBlack
            userDictionaryCountLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var userPlaceHintLabel: UILabel! {
        didSet {
            userPlaceHintLabel.text = Lang.get(valueFor: .l_home_place)
            userPlaceHintLabel.font = .font(name: .roboto_regular, size: .r16)
            userPlaceHintLabel.textColor = .bHomeTextGray
        }
    }
    
    @IBOutlet weak var userPlaceCountLabel: UILabel! {
        didSet {
            userPlaceCountLabel.text = "12"
            userPlaceCountLabel.textColor = .bBlack
            userPlaceCountLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var userAspectConstraint: NSLayoutConstraint!
    
    
    ///lessons
    @IBOutlet weak var lessonsView: UIView! {
        didSet {
            lessonsView.backgroundColor = .bHomeNavBackground
            lessonsView.layer.cornerRadius = 8
            lessonsView.layer.masksToBounds = false
            lessonsView.layer.shadowColor = UIColor.bHomeShadowGray.cgColor
            lessonsView.layer.shadowOffset = .init(width: 0, height: 4)
            lessonsView.layer.shadowRadius = 12
            lessonsView.layer.shadowOpacity = 0.1
        }
    }
    
    @IBOutlet weak var lessonsLabel: UILabel! {
        didSet {
            lessonsLabel.font = .font(name: .roboto_medium, size: .r20)
            lessonsLabel.text = Lang.get(valueFor: .l_home_lesson)
            lessonsLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var lessonExpendableButton: UIButton! {
        didSet {
            lessonExpendableButton.setTitle("", for: .normal)
            lessonExpendableButton.setImage(UIImage.image(name: .uparrow), for: .normal)
            lessonExpendableButton.tintColor = .bBlue
            lessonExpendableButton.backgroundColor = .bHomeExpbBlue
            lessonExpendableButton.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var lessonTableView: UITableView! {
        didSet {
            lessonTableView.separatorStyle = .none
            lessonTableView.register(LessonTVC.nib(), forCellReuseIdentifier: LessonTVC.identifier)
            lessonTableView.delegate = self
            lessonTableView.dataSource = self
        }
    }
    
    @IBOutlet weak var lessonsAspectConstraint: NSLayoutConstraint!
    
    
    ///news
    @IBOutlet weak var newsLabel: UILabel! {
        didSet {
            newsLabel.text = Lang.get(valueFor: .l_home_news)
            newsLabel.textColor = .bBlack
            newsLabel.font = .font(name: .roboto_bold, size: .r20)
        }
    }
    
    @IBOutlet weak var newsMoreButton: UIButton! {
        didSet {
            newsMoreButton.setTitle("", for: .normal)
            newsMoreButton.setImage(UIImage.image(name: .rightChevron), for: .normal)
            newsMoreButton.tintColor = .bBlack
        }
    }
    
    @IBOutlet weak var newsCollectionView: UICollectionView! {
        didSet {
            newsCollectionView.delegate = self
            newsCollectionView.dataSource = self
            newsCollectionView.register(NewsCVC.nib(), forCellWithReuseIdentifier: NewsCVC.identifier)
            newsCollectionView.backgroundColor = .clear
            newsCollectionView.layer.shadowColor = UIColor.bHomeShadowGray.cgColor
            newsCollectionView.layer.shadowOffset = .init(width: 8, height: 4)
            newsCollectionView.layer.shadowRadius = 6
            newsCollectionView.layer.shadowOpacity = 0.3
            newsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            
        }
    }
    
    
    
    //videos
    @IBOutlet weak var videosLabel: UILabel! {
        didSet {
            videosLabel.text = Lang.get(valueFor: .l_home_videos)
            videosLabel.textColor = .bBlack
            videosLabel.font = .font(name: .roboto_bold, size: .r20)
        }
    }
    
    @IBOutlet weak var videosMoreButton: UIButton! {
        didSet {
            videosMoreButton.setTitle("", for: .normal)
            videosMoreButton.setImage(UIImage.image(name: .rightChevron), for: .normal)
            videosMoreButton.tintColor = .bBlack
        }
    }
    
    @IBOutlet weak var videosCollectionView: UICollectionView! {
        didSet {
            videosCollectionView.delegate = self
            videosCollectionView.dataSource = self
            videosCollectionView.register(VideosCVC.nib(), forCellWithReuseIdentifier: VideosCVC.identifier)
            videosCollectionView.backgroundColor = .clear
            videosCollectionView.layer.shadowColor = UIColor.bHomeShadowGray.cgColor
            videosCollectionView.layer.shadowOffset = .init(width: 0, height: 4)
            videosCollectionView.layer.shadowRadius = 6
            videosCollectionView.layer.shadowOpacity = 0.15
            videosCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        resultsExpandableButton.layer.cornerRadius = resultsExpandableButton.frame.height/2
        lessonExpendableButton.layer.cornerRadius = lessonExpendableButton.frame.height/2
        userImageView.layer.cornerRadius = userImageView.frame.height/2
        for i in statisticViews {
            i.layer.cornerRadius = i.frame.height/2
        }
    }
    
    
    
    
    
    
    @IBAction func lampButtonTapped(_ sender: UIButton) {
        navigate(to: .guide)
    }
    
    @IBAction func bellButtonTapped(_ sender: UIButton) {
        navigate(to: .notifications)
    }
    
    @IBAction func discountButtonTapped(_ sender: UIButton) {
        coordinate(to: .discountPopup)
    }
    
    @IBAction func calldownButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func beginTestButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func userExpendableButtonTapped(_ sender: UIButton) {
//        if resultsHidableView.isHidden {
//            //userAspectConstraint.isActive = true
//            //resultsHidableView.isHidden = false
//        } else {
//            resultsHidableView.isHidden = true
//            userAspectConstraint.isActive = false
//        }
    }
    
    
    @IBAction func lessonExpendableButtonTapped(_ sender: UIButton) {
    }
    
    
}



//MARK: - UITableView

extension HomeVC: UITableViewDelegate {
    
}

extension HomeVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LessonTVC.identifier, for: indexPath) as? LessonTVC else {
            let temp = UITableViewCell()
            temp.selectionStyle = .none
            temp.backgroundColor = .clear
            return temp
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.lessonsRowHeight
    }
    
}



//MARK: - UICollectionView
extension HomeVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == newsCollectionView {
            return UICollectionView.newsItemHeight
        } else {
            return UICollectionView.videosItemHeight
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == newsCollectionView {
            navigate(to: .newsDetailed)
        } else {
            navigate(to: .guide)
        }
        
    }
    
}


extension HomeVC: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == newsCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCVC.identifier, for: indexPath) as? NewsCVC else {
                let temp = UICollectionViewCell()
                temp.backgroundColor = .clear
                return temp
            }
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VideosCVC.identifier, for: indexPath) as? VideosCVC else {
                let temp = UICollectionViewCell()
                temp.backgroundColor = .clear
                return temp
            }
            return cell
        }
        
    }
    
    
}
