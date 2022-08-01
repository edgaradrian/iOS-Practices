//
//  Accessibility_Images.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI

struct Accessibility_Images: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Accesibilidad", subtitulo: "Con Imágenes", description: "Utilizando la etiqueta en imágenes se proporciona el texto de VoiceOver")
            
            Image("packers", label: Text("Green Bay Packers"))
            
            
        }
        .font(.title)
    }
}

struct Accessibility_Images_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Images()
    }
}
