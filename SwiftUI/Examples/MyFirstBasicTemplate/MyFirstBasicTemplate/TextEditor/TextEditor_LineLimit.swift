//
//  TextEditor_LineLimit.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/04/22.
//

import SwiftUI

struct TextEditor_LineLimit: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "TextEditor", subtitulo: "Límite de líneas", description: "Usar el lineLimit modificador para restringir cuántas líneas de texto son permitidas introducir.")
            
            VStack {
                Text("Ingresa 2 líneas de comentarios aquí")
                TextEditor(text: $text)
                    .lineLimit(2)
                    .font(.title2)
                    .frame(height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke())
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TextEditor_LineLimit_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_LineLimit()
    }
}
