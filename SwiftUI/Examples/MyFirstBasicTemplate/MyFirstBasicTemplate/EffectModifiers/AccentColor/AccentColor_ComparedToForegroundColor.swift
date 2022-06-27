//
//  AccentColor_ComparedToForegroundColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/06/22.
//

import SwiftUI

struct AccentColor_ComparedToForegroundColor: View {
    @State private var slide = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color de Acento", subtitulo: "Comparado con el color de primer plano", description: "El modificador ForegroundColor a cada vista que lo soporte")
            
            Button(action: {}) {
                Text("Botón con acento verde")
            }
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "bag.fill.badge.plus")
                    Text("Agregar al carrito")
                }
            }
            
            Text("Deslizador con acento verde")
            Slider(value: $slide)
            
            Image(systemName: "gauge")
            
            Text("Notar que la mayoría de las vistas fueron afectadar, menos el deslizador")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                )
            
        }
        .font(.title)
        .foregroundColor(.green)
    }
}

struct AccentColor_ComparedToForegroundColor_Previews: PreviewProvider {
    static var previews: some View {
        AccentColor_ComparedToForegroundColor()
    }
}
