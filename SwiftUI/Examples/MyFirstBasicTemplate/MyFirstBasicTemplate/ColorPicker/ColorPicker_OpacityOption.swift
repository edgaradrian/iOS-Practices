//
//  ColorPicker_OpacityOption.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct ColorPicker_OpacityOption: View {
    @State private var color = Color.blue
    
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "ColorPicker", subtitulo: "Opacity Option", description: "Por defecto, el ColorPicker muestra una opción de opacidad. Se peude deshabitilar esta opción.")
            
            ColorPicker("Selecciona un color", selection: $color)
                .padding()
            
            ColorPicker("Selecciona un color (Sin opacidad)", selection: $color, supportsOpacity: false)
                .padding()
            
        }
        .font(.title)
    }
}

struct ColorPicker_OpacityOption_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_OpacityOption()
    }
}
