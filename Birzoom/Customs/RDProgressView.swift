//
//  RDProgressView.swift
//  Birzoom
//
//  Created by Administrator on 02/10/21.
//

import UIKit

class RDProgressView: UIView {
    var trackLayer: CAShapeLayer!
    var progressLayer: CAShapeLayer!
    var trackPath: UIBezierPath!
    var progressPath: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    fileprivate
    func designUI() {
        
        trackPath = UIBezierPath(rect: frame)
        progressPath = UIBezierPath(rect: frame)
        
        trackLayer = CAShapeLayer()
        trackLayer.lineCap = .round
        trackLayer.lineWidth = frame.height
        trackLayer.fillColor = UIColor.gray.cgColor
        trackLayer.path = trackPath.cgPath
        
        progressLayer = CAShapeLayer()
        progressLayer.lineWidth = frame.height
        progressLayer.lineCap = .round
        progressLayer.fillColor = UIColor.blue.cgColor
        progressLayer.path = progressPath.cgPath
        
        layer.insertSublayer(trackLayer, at: 0)
        layer.insertSublayer(progressLayer, above: trackLayer)
        
        
        
    }
    
}
