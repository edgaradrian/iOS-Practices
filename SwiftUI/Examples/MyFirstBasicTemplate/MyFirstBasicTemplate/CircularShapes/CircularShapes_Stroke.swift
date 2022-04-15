//
//  CircularShapes_Stroke.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/04/22.
//

import SwiftUI

struct CircularShapes_Stroke: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Formas Circulares", subtitulo: "Trazos", description: "Se usan trazos para crear contornos alrededor de las formas. Usando .stroke")
            
            Circle()
                .stroke(Color.blue)
                .padding()
            
            Text(".stroke(Color.blue, lineWidth: 20)")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.blue
                )
            
            Capsule()
                .stroke(Color.blue, lineWidth: 20)
                .padding()
            
            Text(".stroke(Color.blue, style: StrokeStyle(lineWidth: 10, dash: [15,10]))")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.blue
                )
            
            Ellipse()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, dash: [15,10]))
                .padding()
            
        }
        .font(.title)
    }
}

struct CircularShapes_Stroke_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_Stroke()
    }
}
