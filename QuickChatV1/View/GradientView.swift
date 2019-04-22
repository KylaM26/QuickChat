//
//  GradientView.swift
//  QuickChatV1
//
//  Created by Kyla Wilson on 4/21/19.
//  Copyright © 2019 Kyla Wilson. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout() // Triggers layout update
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() { // Sets layout for update
        let gradientLayer = CAGradientLayer() // Creating a Core Animation gradient layer
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.type = CAGradientLayerType.conic
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
