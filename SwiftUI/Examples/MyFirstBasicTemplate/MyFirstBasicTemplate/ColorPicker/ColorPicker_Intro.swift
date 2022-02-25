//
//  ColorPicker_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct ColorPicker_Intro: View {
    @State private var color = Color.blue
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ColorPicker", subtitulo: "Introduction", description: "Usa el ColorPicker para proporcionar opciones de colores. Se necesita una variable enlazada")
            
            Spacer()
            
            ColorPicker("Selecciona un color", selection: $color)
                .padding()
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct ColorPicker_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_Intro()
    }
}
