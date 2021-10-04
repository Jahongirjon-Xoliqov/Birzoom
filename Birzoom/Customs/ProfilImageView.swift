//
//  ProfilImageView.swift
//  Birzoom
//
//  Created by Administrator on 30/09/21.
//

import UIKit
import SDWebImage

class ProfilImageView: UIImageView {
    
    
    init() {
        super.init(frame: .zero)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension ProfilImageView {
    
    func configureUI(withImage img: String? = nil, withName name: String? = nil) {
        
        if let pimage = img {
            
            guard let url = URL(string: pimage) else {
                //go to button
                if let nname = name {
                    designWithoutImage(name: nname)
                } else {
                    designWithNothing()
                }
                return
            }
            
            designWithImage(url: url)
            
        } else
        
        if let pname = name {
            designWithoutImage(name: pname)
        } else {
            designWithNothing()
        }
        
        clipsToBounds = true
    }
    
    fileprivate
    func designWithoutImage(name: String) {
        
        let nname = name.replacingOccurrences(of: " ", with: "")
        
        if let firstLetter = nname.first {
            
            ///placeholder button configs
            let placeholderButton = UIButton()
            placeholderButton.setTitle(String(firstLetter).uppercased(), for: .normal)
            placeholderButton.titleLabel?.font = .font(name: .roboto_medium, size: .r30)
            placeholderButton.setTitleColor(.white, for: .normal)
            //placeholderButton.backgroundColor = .bBlue
            
            ///gradient for button
            ///should create gradient
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
            gradientLayer.colors =  [#colorLiteral(red: 0.5998852064, green: 0.8637192795, blue: 0.9761541486, alpha: 1).cgColor, UIColor.bBlue.cgColor]
            gradientLayer.locations = [0.0,1.0]
            layer.insertSublayer(gradientLayer, at: 0)
            
            
            addSubview(placeholderButton)
            placeholderButton.translatesAutoresizingMaskIntoConstraints = false
            placeholderButton.topAnchor.constraint(equalTo: topAnchor).isActive = true
            placeholderButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            placeholderButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            placeholderButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            
            
        } else {
            designWithNothing()
        }
        
        
        
    }
    
    fileprivate
    func designWithImage(url: URL) {
        sd_imageIndicator = SDWebImageActivityIndicator.gray
        sd_setImage(with: url)
    }
    
    fileprivate
    func designWithNothing() {
        image = .image(name: .profil)
    }
    
}
