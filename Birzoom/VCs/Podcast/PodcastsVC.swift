//
//  PodcastsVC.swift
//  Birzoom
//
//  Created by Administrator on 11/10/21.
//

import UIKit

class PodcastsVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 60, right: 0)
        }
    }
    
    
    
    @IBOutlet weak var podcastsLabel: UILabel! {
        didSet {
            podcastsLabel.designAsTopTitle()
            podcastsLabel.text = Lang.get(valueFor: .l_podcasts)
        }
    }
    
    @IBOutlet weak var bellButton: UIButton! {
        didSet {
            bellButton.tintColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var topPodcastsCollectionView: UICollectionView! {
        didSet {
            topPodcastsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            topPodcastsCollectionView.delegate = self
            topPodcastsCollectionView.dataSource = self
            topPodcastsCollectionView.register(TopPodcastsCVC.nib(), forCellWithReuseIdentifier: TopPodcastsCVC.identifier)
        }
    }
    
    @IBOutlet weak var birzoomFMButton: UIButton! {
        didSet {
            birzoomFMButton.setTitle(Lang.get(valueFor: .l_podcasts_fm), for: .normal)
            birzoomFMButton.setTitleColor(.bBlue, for: .normal)
            birzoomFMButton.titleLabel?.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var newPodcastsLabel: UILabel! {
        didSet {
            newPodcastsLabel.font = .font(name: .roboto_medium, size: .r20)
            newPodcastsLabel.textColor = .bBlack
            newPodcastsLabel.text = Lang.get(valueFor: .l_podcasts_news)
        }
    }
    
    @IBOutlet weak var newPodcastsCollectionView: UICollectionView! {
        didSet {
            newPodcastsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            newPodcastsCollectionView.delegate = self
            newPodcastsCollectionView.dataSource = self
            newPodcastsCollectionView.register(NewPodcastsCVC.nib(), forCellWithReuseIdentifier: NewPodcastsCVC.identifier)
        }
    }
    
    @IBOutlet weak var everyonePodcastsLabel: UILabel! {
        didSet {
            everyonePodcastsLabel.font = .font(name: .roboto_medium, size: .r20)
            everyonePodcastsLabel.textColor = .bBlack
            everyonePodcastsLabel.text = Lang.get(valueFor: .l_podcasts_forEveryone)
        }
    }
    
    @IBOutlet weak var everyonePodcastsCollectionView: UICollectionView! {
        didSet {
            everyonePodcastsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            everyonePodcastsCollectionView.delegate = self
            everyonePodcastsCollectionView.dataSource = self
            everyonePodcastsCollectionView.register(NewPodcastsCVC.nib(), forCellWithReuseIdentifier: NewPodcastsCVC.identifier)
        }
    }
    
    @IBOutlet weak var motivationalPodcastLabel: UILabel! {
        didSet {
            motivationalPodcastLabel.font = .font(name: .roboto_medium, size: .r20)
            motivationalPodcastLabel.textColor = .bBlack
            motivationalPodcastLabel.text = Lang.get(valueFor: .l_podcasts_motivational)
        }
    }
    
    @IBOutlet weak var motivationalPodcastsCollectionView: UICollectionView! {
        didSet {
            motivationalPodcastsCollectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
            motivationalPodcastsCollectionView.delegate = self
            motivationalPodcastsCollectionView.dataSource = self
            motivationalPodcastsCollectionView.register(NewPodcastsCVC.nib(), forCellWithReuseIdentifier: NewPodcastsCVC.identifier)
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func bellButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func podcastFMButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func newPodcastsButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func everyonePodcastsButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func motivationalPodcastsButtonTapped(_ sender: UIButton) {
    }
    
}


extension PodcastsVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case topPodcastsCollectionView: return UICollectionView.topPodcastsItemSize
        case newPodcastsCollectionView: return UICollectionView.newPodcastsItemSize
        case everyonePodcastsCollectionView: return UICollectionView.newPodcastsItemSize
        case motivationalPodcastsCollectionView: return UICollectionView.newPodcastsItemSize
        default: return .zero
        }
        
    }
    
}

extension PodcastsVC: UICollectionViewDelegate {
    
}

extension PodcastsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case topPodcastsCollectionView: return 4
        case newPodcastsCollectionView: return 4
        case everyonePodcastsCollectionView: return 4
        case motivationalPodcastsCollectionView: return 4
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case topPodcastsCollectionView:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: TopPodcastsCVC.identifier, for: indexPath) as? TopPodcastsCVC else {
                let temp = UICollectionViewCell()
                temp.backgroundColor = .clear
                return temp
            }
            return item
        
        case newPodcastsCollectionView, everyonePodcastsCollectionView, motivationalPodcastsCollectionView:
            guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: NewPodcastsCVC.identifier, for: indexPath) as? NewPodcastsCVC else {
                let temp = UICollectionViewCell()
                temp.backgroundColor = .clear
                return temp
            }
            return item
            
        default: return UICollectionViewCell()
        }
        
    }
    
}
