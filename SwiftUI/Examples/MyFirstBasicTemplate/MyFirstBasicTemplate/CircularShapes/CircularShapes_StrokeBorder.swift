//
//  CircularShapes_StrokeBorder.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/04/22.
//

import SwiftUI

struct CircularShapes_StrokeBorder: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Figuras Circulares", subtitulo: "Stroke Border (Inner Stroke)", description: "El modificador stroke crece hacia afuera del centro del contorno de una figura y puede causar problemas de superposición.")
            
            ZStack {
                Capsule()
                    .stroke(Color(UIColor.blue), lineWidth: 50)
                Capsule()
                    .stroke()
            }
            
            Text("Un modificador strokeBorder crecerá hacia dentro del contorno de una figura.")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.blue
                )
            
            ZStack {
                Capsule()
                    .strokeBorder(Color.blue, lineWidth: 50)
                Capsule()
                    .stroke()
            }
            
        }
        .font(.title)
    }
}

struct CircularShapes_StrokeBorder_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_StrokeBorder()
    }
}
