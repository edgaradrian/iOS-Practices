//
//  TextField_FocusState.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_FocusState: View {
    @State private var name = ""
    @FocusState private var nameIsFocused: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextField", subtitulo: "@FocusState", description: "Se utiliza @FocusState para enfocar un campo de texto.")
            
            TextField("Ingresa tu nombre para continuar.", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
                .focused($nameIsFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.red, lineWidth: nameIsFocused ? 1 : 0)
                        .padding()
                )
            
            Button("Continuar") {
                nameIsFocused = name.isEmpty
            }
            
        }
        .font(.title)
    }
}

struct TextField_FocusState_Previews: PreviewProvider {
    static var previews: some View {
        TextField_FocusState()
    }
}
