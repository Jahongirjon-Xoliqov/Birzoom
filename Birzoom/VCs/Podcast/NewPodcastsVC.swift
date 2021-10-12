//
//  NewPodcastsVC.swift
//  Birzoom
//
//  Created by Administrator on 12/10/21.
//

import UIKit

class NewPodcastsVC: UIViewController {
    
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var podcastTitleLabel: UILabel! {
        didSet {
            podcastTitleLabel.designAsTopTitle()
            podcastTitleLabel.text = Lang.get(valueFor: .l_podcasts_news)
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(PodcastsDetailedCVC.nib(), forCellWithReuseIdentifier: PodcastsDetailedCVC.identifier)
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

extension NewPodcastsVC: UICollectionViewDelegate {
    
}

extension NewPodcastsVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        UICollectionView.podcastsDetailedItemSize
    }
    
}

extension NewPodcastsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: PodcastsDetailedCVC.identifier, for: indexPath) as? PodcastsDetailedCVC else {
            let temp = UICollectionViewCell()
            temp.backgroundColor = .clear
            return temp
        }
        
        return item
        
    }
    
}
