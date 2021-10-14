//
//  GamesTabVC.swift
//  Birzoom
//
//  Created by rakhmatillo topiboldiev on 13/10/21.
//

import UIKit

class GamesTabVC: UIViewController {
    @IBOutlet weak var navigationTitleLabel: UILabel!{
        didSet{
            navigationTitleLabel.designAsTopTitle()
            
        }
    }
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "GamesTabTVC", bundle: nil), forCellReuseIdentifier: "GamesTabTVC")
            tableView.contentInset.top = 16
            tableView.contentInset.bottom = 16
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension GamesTabVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GamesTabTVC", for: indexPath) as? GamesTabTVC else {return UITableViewCell()}
        cell.updateCell(tempIndexRow: indexPath.row)
        cell.selectionStyle = .none
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.communityRowHeight
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let vc = OnlineBattleSelectCompetitorVC(nibName: "OnlineBattleSelectCompetitorVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
}
