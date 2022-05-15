//
//  HalfCircleProgress.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/05/22.
//

import SwiftUI

struct HalfCircleProgress: Shape {
    var progress: CGFloat = 0.4
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY),
                            radius: rect.midX,
                            startAngle: .degrees(180),
                            delta: .degrees(180 * progress))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }//path
    
    
}//HalfCircleProgress

