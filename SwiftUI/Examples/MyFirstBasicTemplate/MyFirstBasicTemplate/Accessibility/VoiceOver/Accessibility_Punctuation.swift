//
//  Accessibility_Punctuation.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI

struct Accessibility_Punctuation: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Accesibilidad", subtitulo: "El control y puntuación importa", description: "Como se va a leer por parte de VoiceOver, depende de la puntuación")
            
            Button(action: {}) {
                Image(systemName: "x.circle")
            }
            
            Button(action: {}) {
                Image(systemName: "x.circle")
            }
            .accessibilityLabel(Text("Botón de cerrar"))
            
            Button(action: {}) {
                Image(systemName: "x.circle")
            }
            .accessibilityLabel(Text("Cerrar."))
            
            Button(action: {}) {
                Image(systemName: "x.circle")
            }
            .accessibilityLabel(Text("Cerrar"))
            
        }
        .font(.title)
    }
}

struct Accessibility_Punctuation_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Punctuation()
    }
}
