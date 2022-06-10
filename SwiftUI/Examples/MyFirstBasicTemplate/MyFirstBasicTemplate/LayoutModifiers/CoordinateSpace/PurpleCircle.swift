//
//  PurpleCircle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 10/06/22.
//

import SwiftUI

let BlueSquareSpace = "BlueSquareCoordinateSpace"

struct PurpleCircle: View {
    
    @Binding var location: CGPoint
    
    var body: some View {
        Circle()
            .fill(Color.purple)
            .frame(width: 25, height: 25)
            .gesture(
                DragGesture(coordinateSpace: .named(BlueSquareSpace))
                    .onChanged({ info in
                        location = info.location
                    })
            )
            .position(location)
    }
}

struct PurpleCircle_Previews: PreviewProvider {
    static var previews: some View {
        PurpleCircle(location: .constant(CGPoint(x: 100, y: 100)))
    }
}
