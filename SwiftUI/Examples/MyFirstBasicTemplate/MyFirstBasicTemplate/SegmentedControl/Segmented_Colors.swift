//
//  Segmented_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct Segmented_Colors: View {
    @State private var selection = 2
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Segmented Control (Picker)", subtitulo: "Colores", description: "Se puede cambiar el color de los segmentos de control usando el modificador background")
            
            Text("Cuando se añade un color, notar las esquinas: ")
            
            Picker("", selection: $selection) {
                Text("Uno").tag(1)
                Text("Dos").tag(2)
                Text("Tres").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.cyan)
            .padding(.horizontal)
            
            Text("Agregar un corner radious dbe manejarlo:")
            Picker("", selection: $selection) {
                Text("Uno").tag(1)
                Text("Dos").tag(2)
                Text("Tres").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.cyan)
            .cornerRadius(8)
            .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct Segmented_Colors_Previews: PreviewProvider {
    static var previews: some View {
        Segmented_Colors()
    }
}
