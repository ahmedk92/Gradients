//
//  GradientDrawView.swift
//  Gradients
//
//  Created by Ahmed Khalaf on 10/27/19.
//  Copyright © 2019 Ahmed Khalaf. All rights reserved.
//

import UIKit

class GradientDrawView: UIView {
    override func draw(_ rect: CGRect) {
        guard
            let context = UIGraphicsGetCurrentContext(),
            let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [UIColor.red, .blue].map({ $0.cgColor }) as CFArray, locations: nil)
            else { return }
        
        context.drawLinearGradient(gradient, start: .zero, end: CGPoint(x: bounds.width, y: bounds.height), options: [])
    }
}
