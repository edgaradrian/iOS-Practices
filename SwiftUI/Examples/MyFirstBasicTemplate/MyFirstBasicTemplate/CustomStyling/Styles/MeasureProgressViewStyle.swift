//
//  MeasureProgressViewStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct MeasureProgressViewStyle: ProgressViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        let percent = Double(configuration.fractionCompleted ?? 1)
        
        GeometryReader { g in
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.8)
                    .stroke(measureGradient, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                    .rotationEffect(.degrees(125))
                
                Circle()
                    .strokeBorder(Color.primary, lineWidth: 5)
                    .frame(width: 38, height: 38)
                    .offset(y: g.size.height / 2 - (38/2))
                    .rotationEffect(.degrees(35 + (290 * percent)), anchor: .center)
                
                Text("\(Int(percent * 100))")
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                
                configuration.label
                    .font(.system(.title, design: .rounded).bold())
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .frame(width: 100)
                    .lineLimit(2)
                
            }
            .padding(20)
            .frame(width: min(g.size.height, g.size.width), height: min(g.size.height, g.size.width))
        }
        
    }//makeBody
    
}//MeasureProgressViewStyle

let measureGradient = AngularGradient(colors: [.cyan, .green, .yellow, .orange, .red, .purple],
                                      center: .center,
                                      startAngle: .degrees(-5),
                                      endAngle: .degrees(270))
