//
//  TextField_Placeholder.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/04/22.
//

import SwiftUI

struct TextField_Placeholder: View {
    @State private var textfieldData = ""
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "Sugerencia", description: "Se puede suministrar una sugerencias en el primer parámetro para que el usuario sepa el propósito.")
            
            Group {
                
                TextField("Aquí va el título", text: $textfieldData)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Nombre de usuario", text: $textfieldData)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Contraseña", text: $password)
                
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct TextField_Placeholder_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Placeholder()
    }
}
