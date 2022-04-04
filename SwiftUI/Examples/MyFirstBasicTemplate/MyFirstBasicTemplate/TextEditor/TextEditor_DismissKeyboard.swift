//
//  TextEditor_DismissKeyboard.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextEditor_DismissKeyboard: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextEditor", subtitulo: "Ocultar el teclado", description: "Ejemplo de ocultar el teclado.")
            
            VStack {
                HStack {
                    Text("Ingresa comentarios aquí")
                    Spacer()
                    Button {
                        self.hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                }
                
                TextEditor(text: $text)
                    .font(.title2)
                    .border(Color.secondary.opacity(0.5), width: 1)
                
            }
            .padding(.horizontal)
        }
        .font(.title)
        .accentColor(.blue)
    }
}

struct TextEditor_DismissKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_DismissKeyboard()
    }
}
