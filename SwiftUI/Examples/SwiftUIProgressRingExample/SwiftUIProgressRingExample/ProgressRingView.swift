//
//  ProgressRingView.swift
//  SwiftUIProgressRingExample
//
//  Created by Edgar Adrián on 31/08/20.
//

import SwiftUI

struct ProgressRingView: View {
    
    var thickness: CGFloat = 30.0
    var width: CGFloat = 250.0
    var gradient = Gradient(colors: [.darkPurple, .lightYellow])
    var startAngle = -90.0
    
    @Binding var progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray6), lineWidth: thickness)
            
            RingShape(progress: progress, thickness: thickness)
                .fill(AngularGradient(gradient: gradient, center: .center, startAngle: .degrees(startAngle), endAngle: .degrees(360 * progress + startAngle)))
        }
        .frame(width: width, height: width, alignment: .center)
    }
    
    
}//ProgressRingView

struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingView()
    }
}
