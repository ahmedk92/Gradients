//
//  GradientButton.swift
//  Gradients
//
//  Created by Ahmed Khalaf on 10/27/19.
//  Copyright © 2019 Ahmed Khalaf. All rights reserved.
//

import UIKit

class GradientButton: UIButton {
    private weak var gradientLayer: CAGradientLayer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let gradientLayer = makeGradientLayer()
        layer.insertSublayer(gradientLayer, at: 0)
        self.gradientLayer = gradientLayer
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer?.frame = bounds
    }
}
