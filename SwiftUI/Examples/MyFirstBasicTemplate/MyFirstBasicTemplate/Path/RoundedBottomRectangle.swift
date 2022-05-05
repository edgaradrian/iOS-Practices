//
//  RoundedBottomRectangle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/05/22.
//

import SwiftUI

struct RoundedBottomRectangle: Shape {
    
    var curveOffset: CGFloat = 10
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY),
                          control: CGPoint(x: rect.midX, y: rect.maxY + curveOffset))
        path.addLine(to: CGPoint(x: 0, y: 0))
        
        return path
    }
    
}

