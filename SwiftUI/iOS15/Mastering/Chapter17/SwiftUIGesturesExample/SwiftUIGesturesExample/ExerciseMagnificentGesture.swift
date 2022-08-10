//
//  ExerciseMagnificentGesture.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 09/08/22.
//

import SwiftUI

struct ExerciseMagnificentGesture: View {
    
    @GestureState private var scale: CGFloat = 1.0
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 80))
            .foregroundColor(.yellow)
            .scaleEffect(scale)
            .animation(.easeInOut, value: scale)
            .gesture(
                MagnificationGesture()
                    .updating($scale, body: { value, scale, transaction in
                        scale = value.magnitude
                    })
            )
    }
}

struct ExerciseMagnificentGesture_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseMagnificentGesture()
    }
}
