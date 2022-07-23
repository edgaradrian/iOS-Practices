//
//  Shape+Extensions.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/07/22.
//

import SwiftUI

extension Shape {
    
    func addOutline(lineWidth: CGFloat = 1, trim: CGFloat = 1) -> some View {
        self
            .trim(from: 0, to: trim)
            .stroke(shapeLinearGradient, style: StrokeStyle(lineWidth: lineWidth, lineCap: CGLineCap.round))
            .padding(lineWidth/2 + 5)
    }
    
}//Shape

let shapeGradientColors = Gradient(colors: [Color.blue, Color.yellow])
let shapeLinearGradient = LinearGradient(gradient: shapeGradientColors, startPoint: .topLeading, endPoint: .bottomLeading)
