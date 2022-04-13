//
//  CircularShapes_Color.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 13/04/22.
//

import SwiftUI

struct CircularShapes_Color: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Circular Shapes", subtitulo: "Colores", description: "Las formas circulares (y otras formas) pueden tener estilos aplicados a ellas. El Color es un estilo de figura.")
            
            Text("Usando .fill(Color.purple)")
            
            Circle()
                .fill(Color.blue)
                .frame(height: 100)
                .padding()
            
            Text("Usando .foregroundColor(.purple)")
            
            Circle()
                .foregroundColor(.blue)
                .frame(height: 100)
                .padding()
            
            Text("Notar que el modificador .fill aplica exclusivamente a figuras. No puede ser aplicado en vistas.")
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Color.blue
                )
            
            
        }
        .font(.title)
    }
}

struct CircularShapes_Color_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_Color()
    }
}
