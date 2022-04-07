//
//  TextField_KeyboardType.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_KeyboardType: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "Tipos de teclado", description: "Controlar que tipo de teclado será mostrado con el modificador keyboardType.")
            
            TextField("Ingresa el número telefónico", text: $textFieldData)
                .keyboardType(.phonePad)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
        }
    }
}

struct TextField_KeyboardType_Previews: PreviewProvider {
    static var previews: some View {
        TextField_KeyboardType()
    }
}
