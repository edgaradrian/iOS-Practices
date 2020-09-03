//
//  RingTip.swift
//  SwiftUIProgressRingExample
//
//  Created by Edgar Adrián on 03/09/20.
//

import SwiftUI

struct RingTip: Shape {
    var progress: Double = 0.0
    var startAngle: Double = -90.0
    var ringRadius: Double
    
    private var position: CGPoint {
        let angle = 360 * progress + startAngle
        let angleInRadian = angle * .pi / 180
        
        return CGPoint(x: ringRadius * cos(angleInRadian), y: ringRadius * sin(angleInRadian))
    }//position
    
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }//animatableData
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        guard progress > 0.0 else {
            return path
        }
        
        let frame = CGRect(x: position.x, y: position.y, width: rect.size.width, height: rect.size.height)
        
        path.addRoundedRect(in: frame, cornerSize: frame.size)
        
        return path
        
    }//path
    
    
}//RingTip
