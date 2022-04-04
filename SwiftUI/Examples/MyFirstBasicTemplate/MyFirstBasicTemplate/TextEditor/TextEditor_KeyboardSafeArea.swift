//
//  TextEditor_KeyboardSafeArea.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextEditor_KeyboardSafeArea: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextEditor", subtitulo: "Keyboard Safe Area", description: "TextEditor automáticamente moverá la vista cuando el teclado aparezca. El teclado ajusta el área segura para no cubrir las otras vista.")
            
            Spacer()
            
            Button {
                self.hideKeyboard()
            } label: {
                Image(systemName: "keyboard.chevron.compact.down")
            }
            
            TextEditor(text: $text)
                .frame(height: 200)
                .padding(4)
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue))
            
            Spacer()

        }
        .font(.title)
        .accentColor(.blue)
    }
}

struct TextEditor_KeyboardSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_KeyboardSafeArea()
    }
}
