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
    
    init() {
        super.init(frame: .zero)
        print("wothou")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("frame")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("coder")
        
    }
    
    
    override func draw(_ rect: CGRect) {
        designUI()
    }
    
    fileprivate
    func designUI() {
        
        trackPath = UIBezierPath()
        trackPath.move(to: CGPoint(x: 0, y: 0))
        trackPath.addLine(to: CGPoint(x: frame.width, y: 0))
        progressPath = UIBezierPath()
        progressPath.move(to: CGPoint(x: 0, y: 0))
        progressPath.addLine(to: CGPoint(x: frame.width, y: 0))
        
        trackLayer = CAShapeLayer()
        trackLayer.frame = bounds
        trackLayer.lineCap = .round
        trackLayer.lineWidth = bounds.height
        trackLayer.fillColor = nil
        trackLayer.strokeStart = 0
        trackLayer.strokeEnd = 1
        trackLayer.strokeColor = UIColor.clear.cgColor
        trackLayer.path = trackPath.cgPath
        
        progressLayer = CAShapeLayer()
        progressLayer.frame = bounds
        progressLayer.lineCap = .round
        progressLayer.lineWidth = bounds.height
        progressLayer.fillColor = nil
        progressLayer.strokeStart = 0
        progressLayer.strokeEnd = 0
        progressLayer.strokeColor = UIColor.clear.cgColor
        progressLayer.path = progressPath.cgPath
        
        layer.insertSublayer(trackLayer, at: 0)
        layer.insertSublayer(progressLayer, above: trackLayer)
        
    }
    
    
    func setColors(trackColor tc: UIColor, progressColor pc: UIColor) {
        progressLayer.strokeColor = pc.cgColor
        trackLayer.strokeColor = tc.cgColor
    }
    
    func setValue(_ value: CGFloat) {
        progressLayer.strokeEnd = value/100
    }
    
    
    
}
