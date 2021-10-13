//
//  TestsVC.swift
//  Birzoom
//
//  Created by Administrator on 13/10/21.
//

import UIKit

class TestsVC: UIViewController {

    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var testsLabel: UILabel! {
        didSet {
            testsLabel.text = Lang.get(valueFor: .l_tests)
            testsLabel.designAsTopTitle()
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(TestsCVC.nib(), forCellWithReuseIdentifier: TestsCVC.identifier)
            collectionView.contentInset = UIEdgeInsets(top: 24, left: 16, bottom: 24, right: 16)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
   
}

extension TestsVC: UICollectionViewDelegate {
    
}

extension TestsVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        UICollectionView.testsItemSize
    }
    
}

extension TestsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: TestsCVC.identifier, for: indexPath) as? TestsCVC else {
            let temp = UICollectionViewCell()
            temp.backgroundColor = .clear
            return temp
        }
        item.assign()
        return item
        
    }
    
}
