//
//  MyDivider.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct MyDivider: View {
    var lineWidth: CGFloat = 1
    var color: Color = Color.secondary
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: geometry.size.width - 10, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: self.lineWidth, lineCap: CGLineCap.round))
            .foregroundColor(self.color)
        }
    }
}


