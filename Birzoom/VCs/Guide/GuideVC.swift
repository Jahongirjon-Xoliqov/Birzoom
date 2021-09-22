//
//  GuideVC.swift
//  Birzoom
//
//  Created by Administrator on 22/09/21.
//

import UIKit
import AVKit

class GuideVC: UIViewController {

    @IBOutlet weak var topNavView: UIView! {
        didSet {
            topNavView.backgroundColor = .bHomeNavBackground
        }
    }
    
    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.setTitle("", for: .normal)
            backButton.setImage(UIImage.image(name: .chevBack), for: .normal)
            backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
            backButton.tintColor = .bBlue
        }
    }
    
    @IBOutlet weak var guideLabel: UILabel! {
        didSet {
            guideLabel.text = Lang.get(valueFor: .l_guide)
            guideLabel.textColor = .bBlack
            guideLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.backgroundColor = .bHomeNavBackground
        }
    }
    
    @IBOutlet weak var videoView: UIView! {
        didSet {
            videoView.clipsToBounds = true
            videoView.layer.cornerRadius = 8
            
        }
    }
    
    @IBOutlet weak var videoTitleLabel: UILabel! {
        didSet {
            videoTitleLabel.text = "Birzoom platformasi" //temp
            videoTitleLabel.textColor = .bBlack
            videoTitleLabel.font = .font(name: .roboto_medium, size: .r20)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            let text = """
            Barcha yoshdagilar uchun mos keluvchi boshlang'ich kursi ingliz tilini 0 dan boshlovchilar uchun alifbodan elementar darajagacha qamrab oluvchi barcha bilimlarni batafsil tushuntirib beradi. Ushbu kurs bitiruvchilari malakali ustozlarning jonli muloqotlaridan so'ng, o'zlarini tanishtira olishlari va kundalik hayotdagi mavzularda muloqot uchun tayyor bo'lishlarini ta'minlaydi. Ustozning o'quvchi bilan individual shug'illanishi ta'minlanadi.
            
            Barcha yoshdagilar uchun mos keluvchi boshlang'ich kursi ingliz tilini 0 dan boshlovchilar uchun alifbodan elementar darajagacha qamrab oluvchi barcha bilimlarni batafsil tushuntirib beradi. Ushbu kurs bitiruvchilari malakali ustozlarning jonli muloqotlaridan so'ng, o'zlarini tanishtira olishlari va kundalik hayotdagi mavzularda muloqot uchun tayyor bo'lishlarini ta'minlaydi. Ustozning o'quvchi bilan individual shug'illanishi ta'minlanadi.
            """
            
            descriptionLabel.textColor = .bHomeTextGray
            descriptionLabel.font = .font(name: .roboto_regular, size: .r18)
            
            
            let style = NSMutableParagraphStyle()
            style.alignment = .left
            style.lineSpacing = 1
            style.minimumLineHeight = 24
            
            let attributes = NSMutableAttributedString(string: text, attributes: [
                .paragraphStyle: style,
                .font: UIFont.font(name: .roboto_regular, size: .r18),
                .foregroundColor: UIColor.bHomeTextGray
            ])
            
            descriptionLabel.attributedText = attributes
        }
    }
    
    
    @IBOutlet weak var foldButton: UIButton!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var back10secButton: UIButton!
    
    @IBOutlet weak var playPauseButton: UIButton!
    
    @IBOutlet weak var forward10secButton: UIButton!
    
    @IBOutlet weak var currentTimeLabel: UILabel! {
        didSet {
            currentTimeLabel.text = "00:00"
            currentTimeLabel.textColor = .white
            currentTimeLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var totalDurationLabel: UILabel! {
        didSet {
            totalDurationLabel.text = "05:32"
            totalDurationLabel.textColor = .white
            totalDurationLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var timeSeekerSlider: UISlider! {
        didSet {
            
        }
    }
    
    
    
    
    
    
    private var videoPlayer: AVPlayer!
    
    private var videoPlayerLayer: AVPlayerLayer!
    
    private var dimmingLayer: CALayer!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///initializing player
        configurePlayer()
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        videoPlayerLayer.frame = videoView.bounds
        dimmingLayer.frame = videoView.bounds
        
    }
    
    @IBAction func videoTapped(_ sender: UITapGestureRecognizer) {
        
    }
    
    
    
    
}


extension GuideVC {
    
    fileprivate
    func configurePlayer() {
        ///this url is temp and should be replaced with another one from backend
        if let path = Bundle.main.path(forResource: "bigbuck", ofType: "mp4") {
            let url = URL(fileURLWithPath: path)
            videoPlayer = AVPlayer(url: url)
            videoPlayerLayer = AVPlayerLayer(player: videoPlayer)
            videoView.layer.insertSublayer(videoPlayerLayer, at: 0)
            videoPlayer.volume = 1
        }
        
        dimmingLayer = CALayer()
        dimmingLayer.backgroundColor = UIColor.black.withAlphaComponent(0.5).cgColor
        videoView.layer.insertSublayer(dimmingLayer, at: 1)
    }
    
}
