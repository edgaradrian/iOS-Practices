//
//  TextEditor_CustomizingText.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/04/22.
//

import SwiftUI

struct TextEditor_CustomizingText: View {
    @State private var text = "NeXT, Inc. was an American technology company that specialized in computer workstations intended for higher-education and business use."
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "TextEditor", subtitulo: "Personalizar el texto", description: "Se pueden aplicar otros modificadores que se utilizan normalmente en las vistas de texto. ")
            
            VStack {
                Text("Ingresa tus comentarios aquí: ")
                TextEditor(text: $text)
                    .font(.system(size: 20, weight: .thin, design: .serif))
                    .foregroundColor(.yellow)
                    .background(Color.cyan)
                    .border(Color.secondary.opacity(0.5), width: 1)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct TextEditor_CustomizingText_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_CustomizingText()
    }
}
