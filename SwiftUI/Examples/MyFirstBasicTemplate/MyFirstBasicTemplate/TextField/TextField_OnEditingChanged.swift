//
//  TextField_OnEditingChanged.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_OnEditingChanged: View {
    @State private var text = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "TextField", subtitulo: "onEditingChanged", description: "El onEditingChanged indica si el campo de texto está enfocado")
            
            Text("Cambiar el color del borde cuando está enfocado")
            
            TextField("Mi campo de texto", text: $text) { isEditing in
                self.isEditing = isEditing
            }
            .padding()
            .border(isEditing ? Color.blue : Color.gray)
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextField_OnEditingChanged_Previews: PreviewProvider {
    static var previews: some View {
        TextField_OnEditingChanged()
    }
}
