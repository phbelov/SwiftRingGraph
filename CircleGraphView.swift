//
//  CircleGraphView.swift
//  SwiftRingGraph
//
//  Created by Филипп Белов on 3/23/16.
//  Copyright © 2016 Philip Belov. All rights reserved.
//

import UIKit

class CircleGraphView: UIView {

    var endArc : CGFloat = 0.0 {
        didSet {
            setNeedsDisplay()
        }
    }
    var arcWidth : CGFloat = 10.0
    var arcColor = UIColor(red: 218/255, green: 73/255, blue: 80/255, alpha: 1.0)
    var arcBackgroundColor = UIColor.darkGrayColor()
    let π = CGFloat(M_PI)

    override func drawRect(rect: CGRect) {
        
        let fullCircle = 2.0 * π
        let start : CGFloat = -0.25 * fullCircle
        let end : CGFloat = endArc * fullCircle + start
        
        var centerPoint = CGPointMake(CGRectGetMidX(rect),CGRectGetMidY(rect))
        
        var radius : CGFloat = 0.0
        if CGRectGetWidth(rect) > CGRectGetHeight(rect) {
            radius = (CGRectGetHeight(rect) - arcWidth) / 2
        } else {
            radius = (CGRectGetWidth(rect) - arcWidth) / 2
        }
        
        let context = UIGraphicsGetCurrentContext()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        CGContextSetLineWidth(context, arcWidth)
        CGContextSetLineCap(context, .Round)
        
        // circle background
        CGContextSetStrokeColorWithColor(context, arcBackgroundColor.CGColor)
        CGContextAddArc(context, centerPoint.x, centerPoint.y, radius, 0, fullCircle, 0)
        CGContextStrokePath(context)
        
        // add a dynamically changing arc
        CGContextSetStrokeColorWithColor(context, arcColor.CGColor)
        CGContextAddArc(context, centerPoint.x, centerPoint.y, radius, start, end, 0)
        CGContextSetLineWidth(context, 0.8 * arcWidth)
        CGContextStrokePath(context)
        
        
        
    }

}
