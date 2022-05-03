//
//  Image_ClipShape.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_ClipShape: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                HeaderView(titulo: "Imagen", subtitulo: "Recorte", description: "Usando el modificador clipShape para recortar la imagen en una figura.")
                
                Text("Círculo")
                Image("packers")
                    .clipShape(Circle())
                
                Text("Rectángulo Redondo")
                Image("packers")
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10, x:1, y: 1)
                
                Text("Encapsulamiento con desplazamiento")
                Image("packers")
                    .clipShape(Capsule().offset(x: -70, y: 0))
                
                
            }
            .font(.title)
        .minimumScaleFactor(0.5)
        }
    }
}

struct Image_ClipShape_Previews: PreviewProvider {
    static var previews: some View {
        Image_ClipShape()
    }
}
