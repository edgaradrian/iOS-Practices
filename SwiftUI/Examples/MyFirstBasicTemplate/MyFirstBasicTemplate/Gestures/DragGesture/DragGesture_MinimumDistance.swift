//
//  DragGesture_MinimumDistance.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 26/07/22.
//

import SwiftUI

struct DragGesture_MinimumDistance: View {
    
    @GestureState private var circleOffset = CGSize.zero
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Arrastre - Mínima distancia", description: "Se pude poner la mínima distancia que se puede arrastrar una vista")
            
            Text("Arrastra la imagen fuera del círculo")
            
            ZStack {
                Circle()
                    .stroke(Color.blue, lineWidth: 1)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "doc.on.doc.fill")
                    .foregroundColor(Color.blue)
                    .offset(circleOffset)
                    .gesture(
                        DragGesture(minimumDistance: 50)
                            .updating($circleOffset, body: { value, state, transaction in
                                state = value.translation
                            })
                    )
                
            }
        }
        .font(.title)
    }
}

struct DragGesture_MinimumDistance_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_MinimumDistance()
    }
}
