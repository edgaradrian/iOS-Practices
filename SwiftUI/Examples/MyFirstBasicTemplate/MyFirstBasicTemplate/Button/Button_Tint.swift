//
//  Button_Tint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_Tint: View {
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Button", subtitulo: "Tint", description: "Tint es un poco diferente que accentColor. El tint puede afectar el estilo del boton diferentemente.")
            
            Button("Bordered - Accent") { }
            .buttonStyle(.bordered)
            .foregroundColor(Color.accentColor)
            
            Button("Bordered - Tint") { }
            .buttonStyle(.bordered)
            .tint(.blue)
            
            Button("Borderless - Tint") { }
            .buttonStyle(.borderless)
            .tint(.blue)
            
            Button("Alternative AccentColor") { }
            .buttonStyle(.borderless)
            .foregroundColor(Color.accentColor)
            
            Button("Deprecated AccentColor") { }
            .buttonStyle(.borderless)
            .accentColor(.blue)
            
        }
        .controlSize(.large)
        .font(.title)
    }
}

struct Button_Tint_Previews: PreviewProvider {
    static var previews: some View {
        Button_Tint()
    }
}
