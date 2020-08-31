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
    var gradient = Gradient(colors: [.darkRed, .lightRed])
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray6), lineWidth: thickness)
            
            RingShape(progress: 0.5, thickness: thickness)
        }
        .frame(width: width, height: width, alignment: .center)
    }
    
    
}//ProgressRingView

struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingView()
    }
}
