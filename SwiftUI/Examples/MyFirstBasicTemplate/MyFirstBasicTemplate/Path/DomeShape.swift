//
//  DomeShape.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/05/22.
//

import SwiftUI

struct DomeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY),
                            radius: rect.midX,
                            startAngle: .degrees(180),
                            delta: .degrees(180))
        return path
    }//path
}//DomeShape

