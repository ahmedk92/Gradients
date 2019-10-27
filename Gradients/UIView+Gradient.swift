//
//  UIView+Gradient.swift
//  Gradients
//
//  Created by Ahmed Khalaf on 10/27/19.
//  Copyright © 2019 Ahmed Khalaf. All rights reserved.
//

import UIKit

extension UIView {
    func makeGradientLayer() -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red, .blue].map({ $0.cgColor })
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        return gradientLayer
    }
}
