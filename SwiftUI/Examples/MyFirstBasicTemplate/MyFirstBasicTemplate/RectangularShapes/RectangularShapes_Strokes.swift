//
//  RectangularShapes_Strokes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/05/22.
//

import SwiftUI

struct RectangularShapes_Strokes: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Formas Rectangulares", subtitulo: "Contorno", description: "Usar trazos (Stroke) para crea contornos en las formas. Usando .stroke(Color.blue)")
                .layoutPriority(1)

            Rectangle()
                .stroke(Color.blue)
                .padding()
            
            Text(".stroke(Color.blue, lineWidth: 20)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(
                    Color.blue
                )
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue, lineWidth: 20)
                .padding()
            
            Text(".stroke")
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.blue
                )
                .foregroundColor(.white)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: CGLineCap.round, dash: [15,25]))
                .padding()

        }
        .font(.title)
    }
}

struct RectangularShapes_Strokes_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapes_Strokes()
    }
}
