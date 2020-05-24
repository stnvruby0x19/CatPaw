//
//  GeometricProgressView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 06.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class GeometricProgressView: UIView {
    
    private var circleLayer = CAShapeLayer()
    private var linearLayer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
    let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func createLinearPath(lineWidth: CGFloat, from: CGFloat, to: CGFloat) {
        let linearPath = UIBezierPath()
        linearPath.move(to: CGPoint(x: from, y: 0))
        linearPath.addLine(to: CGPoint(x: to, y: 0))
        
        let halfCap = to - (to * 1.2)
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = CGRect(x: to - (to * 1.2), y: (-lineWidth + (lineWidth / 2)), width: (to * 1.2) - (halfCap * 20), height: lineWidth)
        gradientLayer.mask = progressLayer
        
        linearLayer.path = linearPath.cgPath
        linearLayer.fillColor = UIColor.clear.cgColor
        linearLayer.lineCap = .round
        linearLayer.lineWidth = lineWidth
        linearLayer.strokeColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.1).cgColor
        
        progressLayer.path = linearPath.cgPath
        progressLayer.frame = CGRect(x: lineWidth, y:lineWidth / 2 , width: 0 , height: 0)//1
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = lineWidth
        progressLayer.strokeEnd = 0
        
        layer.addSublayer(gradientLayer)
        progressLayer.addSublayer(linearLayer)
        
    }
    
    func createCircularPath(lineWidth: CGFloat = 20, lineWidthProgress: CGFloat = 10, radius: CGFloat = 20) {
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: radius, startAngle: -.pi / 2, endAngle: 3 * .pi / 2, clockwise: true)
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = CGRect(x: -radius - lineWidthProgress, y: -radius - lineWidthProgress, width: (radius + lineWidthProgress) * 2, height: (radius + lineWidthProgress) * 2)
        gradientLayer.mask = progressLayer
        
        circleLayer.path = circularPath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = lineWidth
        circleLayer.strokeColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.3)
        
        progressLayer.path = circularPath.cgPath
        progressLayer.frame = CGRect(x: radius + lineWidthProgress, y: radius + lineWidthProgress, width: (radius + lineWidthProgress) * 2, height: (radius + lineWidthProgress) * 2)
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = lineWidthProgress
        progressLayer.strokeEnd = 0
        
        layer.addSublayer(gradientLayer)
        progressLayer.addSublayer(circleLayer)
    }
    
    func progressAnimation(duration: TimeInterval = 0.8, value: Float) {
        let circularProgressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        circularProgressAnimation.timingFunction = .init(name: .easeInEaseOut)
        circularProgressAnimation.duration = duration
        circularProgressAnimation.toValue = value
        circularProgressAnimation.fillMode = .forwards
        circularProgressAnimation.isRemovedOnCompletion = false
        progressLayer.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        progressLayer.add(circularProgressAnimation, forKey: "progressAnim")
    }
    
}
