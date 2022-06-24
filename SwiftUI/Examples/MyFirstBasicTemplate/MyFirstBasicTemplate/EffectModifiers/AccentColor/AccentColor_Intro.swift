//
//  AccentColor_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/06/22.
//

import SwiftUI

struct AccentColor_Intro: View {
    
    @State private var slider = 0.3
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                HeaderView(titulo: "AccentColor", subtitulo: "Intorducción", description: "Con el color de acento es usado para indicar que un control ha interactuado con él.")
                
                Button("Botón con acento por defecto", action: {})
                Button("Botón con acento rojo", action: {})
                    .accentColor(.red)
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "bag.fill.badge.plus")
                        Text("Agregar al carrito")
                    }
                }
                .accentColor(.red)
                
                Text("Deslizador con color de acento por defecto")
                Slider(value: $slider)
                
                Text("Deslizador con color de acento rojo")
                Slider(value: $slider)
                    .accentColor(.red)
                
            }
            .font(.title)
        }
        
    }
}

struct AccentColor_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AccentColor_Intro()
    }
}
