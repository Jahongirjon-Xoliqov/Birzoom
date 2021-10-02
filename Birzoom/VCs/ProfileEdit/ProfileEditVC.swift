//
//  ProfileEditVC.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit

class ProfileEditVC: UIViewController {

    @IBOutlet weak var progressView: RDProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        progressView.setColors(trackColor: #colorLiteral(red: 0.9659876227, green: 0.9661261439, blue: 0.9659573436, alpha: 1), progressColor: .blue)
        progressView.setValue(40)
    }
    
}
