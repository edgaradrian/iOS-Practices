//
//  Accessibility_Testing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI

struct Accessibility_Testing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Accesibilidad", subtitulo: "Introdución", description: "La accesibilidad está agregada automáticamente dentro de SwiftUI.")
            
            Text("Hola nueva(o) usuaria(o)")
            Image(systemName: "hand.wave.fill")
                .accessibilityLabel(Text("Hola con la mano"))
                .font(.system(size: 50))
            
        }
        .font(.title)
    }
}

struct Accessibility_Testing_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Testing()
    }
}
