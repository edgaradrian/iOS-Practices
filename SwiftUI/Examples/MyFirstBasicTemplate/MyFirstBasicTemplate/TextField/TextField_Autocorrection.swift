//
//  TextField_Autocorrection.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_Autocorrection: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "Autocorrección", description: "Se puede quitar la autocorreción usando el modificador disableAutocorrection.")
            
            TextField("Ingresa tu apellido", text: $textFieldData)
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            TextField("Ingresa la Ciudad", text: $textFieldData)
                .disableAutocorrection(false)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TextField_Autocorrection_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Autocorrection()
    }
}
