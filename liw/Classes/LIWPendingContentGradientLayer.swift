//
//  LIWPendingContentGradientLayer.swift
//  PendableContent
//
//  Created by Stephen Walsh on 23/01/2018.
//  Copyright © 2018 Greenby Apps. All rights reserved.
//

import UIKit

open class LIWPendingContentGradientLayer: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
        performInitialSetup(with: #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1),
                            highlightColour: UIColor.white,
                            cornerRadius: 4.0)
    }
    
    init(with backgroundColour: UIColor,
         highlightColour: UIColor,
         cornerRadius: CGFloat) {
        super.init()
        performInitialSetup(with: backgroundColour,
                            highlightColour: highlightColour,
                            cornerRadius: cornerRadius)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        performInitialSetup(with: #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1),
                            highlightColour: UIColor.white,
                            cornerRadius: 4.0)
    }
    
    private func performInitialSetup(with backgroundColour: UIColor,
                                     highlightColour: UIColor,
                                     cornerRadius: CGFloat) {
        self.colors = [highlightColour.withAlphaComponent(0.0).cgColor,
                       highlightColour.withAlphaComponent(0.75).cgColor,
                       highlightColour.withAlphaComponent(0.9).cgColor,
                       highlightColour.withAlphaComponent(0.75).cgColor,
                       highlightColour.withAlphaComponent(0.0).cgColor]
        self.backgroundColor = backgroundColour.cgColor
        self.startPoint = CGPoint.zero
        self.endPoint = CGPoint(x: 1, y: 0)
        self.locations = [0.0, 0.0, 0.0]
        self.cornerRadius = cornerRadius
    }
    
    func show() {
        opacity = 1.0
        removeAllAnimations()
        applyGradientAnimation()
    }
    
    func hide() {
        opacity = 0.0
        removeAllAnimations()
    }
    
    private func applyGradientAnimation() {
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [-1.2, -0.8, -0.6, -0.4, 0.0]
        gradientAnimation.toValue = [1.0, 1.4, 1.6, 1.8, 2.0]
        gradientAnimation.duration = 0.75
        gradientAnimation.repeatCount = Float.infinity
        gradientAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        add(gradientAnimation, forKey: "gradientAnimation")
    }
}
