//
//  InterestsVC.swift
//  Birzoom
//
//  Created by Administrator on 16/09/21.
//

import UIKit

class InterestsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(.image(name: .chevBack), for: .normal)
            backButton.tintColor = UIColor.bBlue
        }
    }
    
    @IBOutlet weak var yourInterestsLabel: UILabel! {
        didSet {
            yourInterestsLabel.text = Lang.get(valueFor: .l_interest)
            yourInterestsLabel.font = .font(name: .roboto_bold, size: .r24)
            yourInterestsLabel.textColor = UIColor.bBlack
        }
    }
    
    @IBOutlet weak var tagCollectionView: UICollectionView! {
        didSet {
            tagCollectionView.backgroundColor = .clear
            tagCollectionView.layer.shadowColor = UIColor.bShadowGray.cgColor
            tagCollectionView.layer.shadowOffset = .init(width: 2, height: 4)
            tagCollectionView.layer.shadowRadius = 8
            tagCollectionView.layer.shadowOpacity = 0.12
            tagCollectionView.delegate = self
            tagCollectionView.dataSource = self
            tagCollectionView.register(InterestsCVC.nib(), forCellWithReuseIdentifier: InterestsCVC.identifier)
            tagCollectionView.collectionViewLayout = HashtagLikeCollectionViewFlowLayout()
            
            tagCollectionView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
            
        }
    }
    
    @IBOutlet weak var skipButton: UIButton! {
        didSet {
            skipButton.clipsToBounds = true
            skipButton.layer.cornerRadius = 8
            skipButton.layer.borderWidth = 1
            skipButton.layer.borderColor = UIColor.bBorderBlue.cgColor
            skipButton.titleLabel?.font = .font(name: .roboto_medium, size: .r16)
            skipButton.setTitle(Lang.get(valueFor: .l_welcome_skip), for: .normal)
            skipButton.setTitleColor(.bBlue, for: .normal)
        }
    }
    
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.design(as: .mainGray)
            continueButton.setTitle(Lang.get(valueFor: .b_reg_continue), for: .normal)
        }
    }
    
    private var tags: [InterestTag] = InterestTag.tags
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func skipButtonTapped(_ sender: UIButton) {
        //move to next page
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        //move to next
        //navigate(to: .interest)
        let vc = MainTabbarController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}


extension InterestsVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let cell = collectionView.cellForItem(at: indexPath) as? InterestsCVC else {
            return
        }
        tags[indexPath.row].isSelected = !tags[indexPath.row].isSelected
        cell.changeSelectionState(isSelected: tags[indexPath.row].isSelected)
        
        continueButton.backgroundColor = .bBlue
    }
    
    
}

extension InterestsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InterestsCVC.identifier, for: indexPath) as? InterestsCVC else {
            let tempCell = UICollectionViewCell()
            tempCell.backgroundColor = .clear
            tempCell.contentView.backgroundColor = .clear
            return tempCell
        }
        
        cell.assign(tag: tags[indexPath.row])
        return cell
        
    }
    
}


extension InterestsVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: tags[indexPath.row].name.widthOfString(usingFont: .font(name: .roboto_medium, size: .r16))+90, height: 42)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
}
