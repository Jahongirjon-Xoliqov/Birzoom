//
//  OnlineBattleSelectCompetitorVC.swift
//  Birzoom
//
//  Created by rakhmatillo topiboldiev on 13/10/21.
//

import UIKit
struct TempDM{
    var img: UIImage
}
class OnlineBattleSelectCompetitorVC: UIViewController {

    @IBOutlet weak var myImgView: UIImageView!
    
    @IBOutlet weak var stackView: UIStackView!{
        didSet{
            stackView.spacing = 72
        }
    }
    @IBOutlet weak var vsLabel: UILabel!{
        didSet{
            vsLabel.font = .font(name: .roboto_regular, size: .r24)
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "SelectCompetitorCVC", bundle: nil), forCellWithReuseIdentifier: "SelectCompetitorCVC")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    var data = [TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!),TempDM(img: UIImage(named: "OnlineBattlePlaceholderImage")!)]
    
    override func viewDidLayoutSubviews() {
        myImgView.layer.cornerRadius = myImgView.frame.height / 2
        myImgView.clipsToBounds = true
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension OnlineBattleSelectCompetitorVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectCompetitorCVC", for: indexPath) as? SelectCompetitorCVC else {return UICollectionViewCell()}
        cell.updateCell(heightOfCV: self.collectionView.frame.height)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.height, height: self.collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = OnlineBattleVC(nibName: "OnlineBattleVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}
