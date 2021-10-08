//
//  AboutUsVC.swift
//  Birzoom
//
//  Created by Administrator on 08/10/21.
//

import UIKit

class AboutUsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var aboutUsTitleLabel: UILabel! {
        didSet {
            aboutUsTitleLabel.designAsTopTitle()
            aboutUsTitleLabel.text = Lang.get(valueFor: .l_aboutus)
        }
    }
    
    
    
    @IBOutlet weak var birzoomTitleLabel: UILabel! {
        didSet {
            birzoomTitleLabel.text = "Birzoom"
            birzoomTitleLabel.font = .font(name: .roboto_medium, size: .r20)
            birzoomTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var birzoomDescriptionLabel: UILabel! {
        didSet {
            birzoomDescriptionLabel.text = """
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec facilisis tempus, nunc, tellus luctus purus. Tellus magna eget odio placerat pellentesque varius amet sagittis. Mattis euismod neque posuere in lectus
            ipsum morbi at. Arcu mauris elementum proin at. Quis consequat imperdiet arcu gravida nulla tellus. In purus maecenas pellentesque pellentesque ante senectus sed. Sit magnis tortor eros, fringilla magnis volutpat nibh cursus. Commodo ultrices neque non sed
            nisl gravida mus in nibh. Amet morbi elementum et pretium orci. Turpis id rutrum dolor et augue. Dui pharetra turpis pulvinar venenatis, enim, odio in. Sapien amet vitae
            sit fringilla. Porttitor dis eget quis elementum, eu condimentum leo risus. Elit, vestibulum risus facilisis metus mattis dignissim.
            """
            birzoomDescriptionLabel.font = .font(name: .roboto_regular, size: .r16)
            birzoomDescriptionLabel.textColor = .bHomeScriptGray
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
}
