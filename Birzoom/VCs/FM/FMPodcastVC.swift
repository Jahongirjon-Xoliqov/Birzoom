//
//  FMPodcastVC.swift
//  Birzoom
//
//  Created by Administrator on 12/10/21.
//

import UIKit

class FMPodcastVC: UIViewController {

    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var fmTitleLabel: UILabel! {
        didSet {
            fmTitleLabel.font = .font(name: .roboto_medium, size: .r16)
        }
    }
    
    @IBOutlet weak var themeLabel: UILabel! {
        didSet {
            themeLabel.font = .font(name: .roboto_medium, size: .r24)
            themeLabel.text = "English time"
            themeLabel.textColor = .white
        }
    }
    
    
    @IBOutlet weak var waveCollectionView: UICollectionView! {
        didSet {
            waveCollectionView.delegate = self
            waveCollectionView.dataSource = self
            waveCollectionView.register(MeterCVC.nib(), forCellWithReuseIdentifier: MeterCVC.identifier)
        }
    }
    
    @IBOutlet weak var playButton: UIButton!
    
    
    
    private var meters: [CGFloat] = []
    
    private var timer: Timer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_)  in
            
            self.meters.append(CGFloat(arc4random_uniform(100)))
            let itemIndex = IndexPath(item: self.meters.count-1, section: 0)
            self.waveCollectionView.insertItems(at: [itemIndex])
            self.waveCollectionView.scrollToItem(at: itemIndex, at: .left, animated: true)
        }
        
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
    
}


extension FMPodcastVC: UICollectionViewDelegate {
    
}

extension FMPodcastVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 12, height: 100)
    }
    
}

extension FMPodcastVC: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        meters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: MeterCVC.identifier, for: indexPath) as? MeterCVC else {
            let temp = UICollectionViewCell()
            temp.backgroundColor = .clear
            return temp
        }
        
        item.setVoice(power: meters[indexPath.row])
        return item
    }
    
    
}
