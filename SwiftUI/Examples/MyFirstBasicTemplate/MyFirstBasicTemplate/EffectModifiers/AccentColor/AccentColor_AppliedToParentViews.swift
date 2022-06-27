//
//  AccentColor_AppliedToParentViews.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/06/22.
//

import SwiftUI

struct AccentColor_AppliedToParentViews: View {
    
    @State private var slide = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color de Acento", subtitulo: "Aplicación en Padre", description: "El color de aceto puede ser también aplicado a un contenedor y será aplicado para todas las vistas hijas.")
            
            Button(action: {}) {
                Text("Botón con acento verde.")
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
            
            DescView(description: "Notar que el texto y la imagen no fueron afectadas cuando se utiliza el modificador de acento", backColor: .blue)
            
        }
        .font(.title)
        .accentColor(.green)
    }
}

struct AccentColor_AppliedToParentViews_Previews: PreviewProvider {
    static var previews: some View {
        AccentColor_AppliedToParentViews()
    }
}
