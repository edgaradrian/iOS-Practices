//
//  Toolbar_OnKeyboard.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/06/22.
//

import SwiftUI

struct Toolbar_OnKeyboard: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Toolbar", subtitulo: "En el teclado", description: "Se pueden agregar botones encima del teclado con el ToolbarItemGroup y una ubicación en el teclado.")
            
            TextField("Agregar nombre", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        .font(.title)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "questionmark.square")
                }
                .tint(.blue)
            }
        }
    }
}

struct Toolbar_OnKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_OnKeyboard()
    }
}
