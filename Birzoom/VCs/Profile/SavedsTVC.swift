//
//  SavedsTVC.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit

class SavedsTVC: UITableViewCell {
    
    @IBOutlet weak var savedTitleLabel: UILabel! {
        didSet {
            savedTitleLabel.font = .font(name: .roboto_medium, size: .r20)
            savedTitleLabel.text = Lang.get(valueFor: .l_profil_saveds)
            savedTitleLabel.textColor = .bBlack
        }
    }

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(SavedsCVC.nib(), forCellWithReuseIdentifier: SavedsCVC.identifier)
            collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}


extension SavedsTVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        UICollectionView.savedsItemSize
    }
    
    
    
}


extension SavedsTVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: SavedsCVC.identifier, for: indexPath) as? SavedsCVC else {
            let temp = UICollectionViewCell()
            temp.backgroundColor = .clear
            return temp
        }
        return item
    }
    
}
