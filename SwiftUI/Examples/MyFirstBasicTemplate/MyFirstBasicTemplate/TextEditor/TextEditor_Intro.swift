//
//  TextEditor_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct TextEditor_Intro: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextEditor", subtitulo: "Introducción", description: "Usar el TextEditor para permitir al usuario ingresar un texto que sea más de una línea.")
            
            VStack {
                Text("Ingresa comentarios")
                TextEditor(text: $text)
                    .font(.title2)
                    .border(Color.secondary.opacity(0.5), width: 1)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct TextEditor_Intro_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_Intro()
    }
}
